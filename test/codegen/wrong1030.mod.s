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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 19 of <array 5 of <array 74 of <array 97 of <char>>>>>>> %ebp+12 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
    movl    $88370, %eax            #   0:     add    t3 <- 88370, 66461
    movl    $66461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t3
    movl    %eax, 8(%ebp)          
l_f0_2_while_cond:
    movl    $97, %eax               #   3:     if     97 = 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   7:     goto   5
    movl    $59327, %eax            #   8:     assign v0 <- 59327
    movl    %eax, 8(%ebp)          
    movl    $85298, %eax            #   9:     assign v0 <- 85298
    movl    %eax, 8(%ebp)          
    movl    $0, %eax                #  10:     assign v2 <- 0
    movb    %al, -19(%ebp)         
    movl    $0, %eax                #  11:     assign v2 <- 0
    movb    %al, -19(%ebp)         
    jmp     l_f0_6_while_cond       #  12:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2_while_cond       #  14:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #  16:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  17:     if     t4 = 1 goto 17
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_17                
    jmp     l_f0_14                 #  18:     goto   14
l_f0_17:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_15                 #  21:     goto   15
l_f0_14:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f0_15:
    movzbl  -18(%ebp), %eax         #  25:     return t5
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 16 of <array 21 of <array 13 of <array 57 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   4  [ $v1       <int> %ebp-16 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    jmp     l_f1_1                  #   3:     goto   1
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    movl    $72870, %eax            #   8:     if     72870 < 51901 goto 7_if_true
    movl    $51901, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   9:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  12:     goto   11_while_cond
    movl    $86005, %eax            #  13:     assign v1 <- 86005
    movl    %eax, -16(%ebp)        
    jmp     l_f1_6                  #  14:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $47296, %eax            #   0:     sub    t3 <- 47296, 4256
    movl    $4256, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t4 <- t3, 71363
    movl    $71363, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t5 <- t4, 23381
    movl    $23381, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     add    t6 <- t5, 45767
    movl    $45767, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t7 <- t6, 80110
    movl    $80110, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     return t7
    jmp     l_f2_exit              
    call    ReadInt                 #   6:     call   t8 <- ReadInt
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     mul    t9 <- t8, 53351
    movl    $53351, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     return t9
    jmp     l_f2_exit              
    movl    $18821, %eax            #   9:     mul    t10 <- 18821, 89696
    movl    $89696, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     sub    t11 <- t10, 32650
    movl    $32650, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 46153
    movl    $46153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     return t12
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    leal    _str_1, %eax            #   6:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
l_test_8_while_cond:
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     if     t1 <= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_9_while_body    
    jmp     l_test_7                #  12:     goto   7
l_test_9_while_body:
    jmp     l_test_11               #  14:     goto   11
l_test_11:
    jmp     l_test_8_while_cond     #  16:     goto   8_while_cond
l_test_7:
l_test_15_while_cond:
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $97, %eax               #  20:     if     97 # t2 goto 16_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  21:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  23:     goto   15_while_cond
l_test_14:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
