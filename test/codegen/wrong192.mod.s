##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
l_f0_1_if_true:
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    movl    $98, %eax               #   6:     assign v2 <- 98
    movb    %al, -16(%ebp)         
    movl    $49915, %eax            #   7:     assign v3 <- 49915
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   8:     assign v4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     if     t3 <= t4 goto 12
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_12                
    jmp     l_f0_13                 #  14:     goto   13
l_f0_12:
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_14                 #  17:     goto   14
l_f0_13:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_14:
    movzbl  -15(%ebp), %eax         #  21:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 < t3 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   6:     goto   4
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
l_f1_8_while_cond:
    jmp     l_f1_7                  #  12:     goto   7
    movl    $99, %eax               #  13:     assign v2 <- 99
    movb    %al, 8(%ebp)           
    movl    $97, %eax               #  14:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_8_while_cond       #  15:     goto   8_while_cond
l_f1_7:
    movl    $75049, %eax            #  17:     sub    t4 <- 75049, 21885
    movl    $21885, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t5 <- t4, 78026
    movl    $78026, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     assign v3 <- t5
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 9 of <array 1 of <array 4 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $56190, %eax            #   0:     div    t3 <- 56190, 21946
    movl    $21946, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t4 <- t3, 30990
    movl    $30990, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v3 <- t4
    movl    %eax, -32(%ebp)        
    movl    $52081, %eax            #   3:     if     52081 # 9101 goto 2_if_true
    movl    $9101, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   4:     goto   3_if_false
l_f2_2_if_true:
    call    ReadInt                 #   6:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     assign v3 <- t5
    movl    %eax, -32(%ebp)        
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $11804, %eax            #  11:     add    t6 <- 11804, 14316
    movl    $14316, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_3                #   3:     goto   3
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t0
    movb    %al, v1                
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $20330, %eax            #  11:     if     20330 < 33698 goto 10_if_true
    movl    $33698, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    movl    $0, %eax                #  14:     assign v1 <- 0
    movb    %al, v1                
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_test_16_while_cond:
    movl    $49589, %eax            #  17:     if     49589 <= 50758 goto 17_while_body
    movl    $50758, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  18:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
l_test_15:
    jmp     l_test_exit            
    jmp     l_test_9                #  23:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_22_if_false      #  26:     goto   22_if_false
    movl    $100, %eax              #  27:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  28:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $90016, %eax            #  30:     assign v2 <- 90016
    movl    %eax, v2               
    jmp     l_test_20               #  31:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
