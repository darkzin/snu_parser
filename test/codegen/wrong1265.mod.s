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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #    -17(%ebp)   1  [ $v3       <bool> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v3 <- t2
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #   9:     if     97 # t4 goto 7
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_7                 
    jmp     l_f0_8                  #  10:     goto   8
l_f0_7:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_9                  #  13:     goto   9
l_f0_8:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f0_9:
    movzbl  -16(%ebp), %eax         #  17:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 68 of <array 65 of <array 78 of <array 95 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $98, %eax               #   7:     if     98 >= 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   8:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_12_while_cond:
    movl    $20851, %eax            #  17:     add    t2 <- 20851, 53622
    movl    $53622, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     sub    t3 <- t2, 80718
    movl    $80718, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     sub    t4 <- t3, 68793
    movl    $68793, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  20:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  21:     if     t4 >= t5 goto 13_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_13_while_body     
    jmp     l_f1_11                 #  22:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  24:     goto   12_while_cond
l_f1_11:
    call    ReadInt                 #  26:     call   t6 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $59058, %eax            #  27:     sub    t7 <- 59058, t6
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  29:     call   WriteInt
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 < 99 goto 4
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_4                 
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v2 <- t2
    movb    %al, -15(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
    movl    $64137, %eax            #  12:     param  0 <- 64137
    pushl   %eax                   
    call    f0                      #  13:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
l_test_1_if_true:
    movl    $1, %eax                #   2:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_0                #   3:     goto   0
l_test_0:
    movl    $99, %eax               #   5:     assign v1 <- 99
    movb    %al, v1                
l_test_7_while_cond:
    jmp     l_test_6                #   7:     goto   6
    jmp     l_test_6                #   8:     goto   6
    jmp     l_test_6                #   9:     goto   6
    jmp     l_test_6                #  10:     goto   6
    movl    $98, %eax               #  11:     assign v1 <- 98
    movb    %al, v1                
    movl    $98, %eax               #  12:     if     98 # 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_15_if_true      
    jmp     l_test_16_if_false      #  13:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  15:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    call    dummyCHARfunc           #  20:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  21:     assign v1 <- t0
    movb    %al, v1                
l_test_20_while_cond:
    jmp     l_test_24               #  23:     goto   24
    jmp     l_test_24               #  24:     goto   24
    jmp     l_test_24               #  25:     goto   24
    movl    $1, %eax                #  26:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_25               #  27:     goto   25
l_test_24:
    movl    $0, %eax                #  29:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_25:
    movzbl  -14(%ebp), %eax         #  31:     if     t1 # 0 goto 21_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_21_while_body   
    jmp     l_test_19               #  32:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  34:     goto   20_while_cond
l_test_19:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
