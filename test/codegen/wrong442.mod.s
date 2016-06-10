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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 10 of <array 7 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 4 of <array 6 of <array 9 of <array 9 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    movl    $97, %eax               #   1:     if     97 <= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 6 of <array 9 of <array 8 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $98, %eax               #   2:     assign v2 <- 98
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #   3:     if     97 >= 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v3 <- t2
    movb    %al, -16(%ebp)         
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    movl    $98, %eax               #  14:     if     98 >= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10                
    jmp     l_f1_11                 #  15:     goto   11
l_f1_10:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  18:     goto   12
l_f1_11:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  22:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_17                 #  23:     goto   17
l_f1_17:
    movl    $0, %eax                #  25:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  26:     goto   14
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 3 of <array 9 of <array 9 of <array 9 of <bool>>>>>>> %ebp+8 ]

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
l_f2_1_while_cond:
    movl    $83351, %eax            #   1:     sub    t2 <- 83351, 9234
    movl    $9234, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t3 <- t2, 65113
    movl    $65113, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $19132, %eax            #   3:     sub    t4 <- 19132, 58711
    movl    $58711, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t5 <- t4, 243
    movl    $243, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t3 > t5 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    movl    $79903, %eax            #  11:     if     79903 <= 74536 goto 6_while_body
    movl    $74536, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #  12:     goto   4
l_f2_6_while_body:
    jmp     l_f2_9_if_true          #  14:     goto   9_if_true
    jmp     l_f2_10_if_false        #  15:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  17:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_5_while_cond       #  20:     goto   5_while_cond
l_f2_4:
    call    dummyINTfunc            #  22:     call   t6 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

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
    movl    $54696, %eax            #   0:     assign v0 <- 54696
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 < 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $100, %eax              #   5:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  11:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  12:     assign v1 <- 100
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
