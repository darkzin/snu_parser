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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     if     100 >= 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    call    dummyINTfunc            #   7:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   8:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  12:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    movl    $86919, %eax            #  14:     assign v1 <- 86919
    movl    %eax, 8(%ebp)          

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 54 of <array 45 of <array 3 of <array 86 of <array 49 of <int>>>>>>> %ebp+12 ]
    #    -19(%ebp)   1  [ $v3       <bool> %ebp-19 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    movl    $72694, %eax            #   2:     if     72694 < 65426 goto 7
    movl    $65426, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7                 
    jmp     l_f1_8                  #   3:     goto   8
l_f1_7:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_9:
    movzbl  -17(%ebp), %eax         #  10:     if     t3 # 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_3                 
    jmp     l_f1_4                  #  11:     goto   4
l_f1_3:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_5                  #  14:     goto   5
l_f1_4:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_5:
    movzbl  -18(%ebp), %eax         #  18:     assign v3 <- t4
    movb    %al, -19(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <char> %ebp-49 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 72 of <array 44 of <array 50 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 19 of <array 32 of <array 77 of <array 91 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 59 of <array 21 of <array 96 of <array 17 of <array 64 of <char>>>>>>> %ebp+20 ]

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
    leal    _str_1, %eax            #   0:     &()    t2 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $75411, %eax            #   3:     div    t3 <- 75411, 32186
    movl    $32186, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     div    t4 <- t3, 30590
    movl    $30590, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     mul    t5 <- t4, 69031
    movl    $69031, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     mul    t6 <- t5, 12936
    movl    $12936, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t7 <- t6, 27927
    movl    $27927, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     sub    t8 <- t7, 29594
    movl    $29594, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  10:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -49(%ebp)         
    movl    $64024, %eax            #  11:     sub    t10 <- 64024, 34562
    movl    $34562, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  13:     call   t11 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     return t11
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    movl    $40599, %eax            #   2:     if     40599 # 61963 goto 3_while_body
    movl    $61963, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $97, %eax               #   8:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_8                #  11:     goto   8
l_test_8:
    call    ReadInt                 #  13:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
