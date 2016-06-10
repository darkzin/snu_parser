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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 34 of <array 54 of <array 35 of <array 97 of <array 78 of <bool>>>>>>> %ebp+12 ]
    #    -44(%ebp)   4  [ $v3       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $38714, %eax            #   2:     add    t5 <- 38714, 99082
    movl    $99082, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t6 <- t5, 58117
    movl    $58117, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t7 <- t6, 28233
    movl    $28233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t8 <- t7, 94211
    movl    $94211, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t9 <- t8, 58606
    movl    $58606, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     assign v3 <- t9
    movl    %eax, -44(%ebp)        

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $23263, %eax            #   1:     add    t3 <- 23263, 23425
    movl    $23425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t4 <- t3, 89848
    movl    $89848, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 93742
    movl    $93742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $75596, %eax            #   4:     if     75596 < t5 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #   9:     call   t6 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  10:     assign v2 <- t6
    movb    %al, 12(%ebp)          
l_f1_6_while_cond:
    jmp     l_f1_7_while_body       #  12:     goto   7_while_body
    jmp     l_f1_7_while_body       #  13:     goto   7_while_body
    jmp     l_f1_7_while_body       #  14:     goto   7_while_body
    jmp     l_f1_5                  #  15:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 52 of <array 55 of <array 32 of <array 49 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 36 of <array 24 of <array 13 of <array 74 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 93 of <array 48 of <array 99 of <array 29 of <array 55 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 27 of <array 76 of <array 41 of <array 93 of <array 12 of <int>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v5       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    movl    $0, %eax                #   2:     assign v5 <- 0
    movb    %al, -15(%ebp)         
l_f2_6_while_cond:
    jmp     l_f2_10                 #   4:     goto   10
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #   6:     goto   11
l_f2_10:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movl    $1, %eax                #  10:     if     1 # t4 goto 7_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  11:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_2                  #  15:     goto   2
l_f2_2:

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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_9                #   5:     goto   9
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #   7:     goto   10
l_test_9:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movl    $47732, %eax            #  11:     if     47732 = 52343 goto 12
    movl    $52343, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12              
    jmp     l_test_13               #  12:     goto   13
l_test_12:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_14               #  15:     goto   14
l_test_13:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_14:
    movzbl  -14(%ebp), %eax         #  19:     if     t1 = t2 goto 5_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #  20:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #  22:     goto   4
l_test_6_if_false:
l_test_4:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
