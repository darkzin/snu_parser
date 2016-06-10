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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 56 of <array 92 of <array 57 of <array 13 of <char>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $87091, %eax            #   0:     add    t14 <- 87091, 41218
    movl    $41218, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t14
    movl    %eax, -24(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   3:     goto   3_while_body
    jmp     l_f0_3_while_body       #   4:     goto   3_while_body
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
    call    dummyCHARfunc           #   7:     call   t15 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t14      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 59 of <array 24 of <array 53 of <array 84 of <array 5 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   1:     call   t14 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 >= t14 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   6:     goto   5
    jmp     l_f1_6_while_cond       #   7:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 37 of <array 81 of <array 46 of <array 35 of <int>>>>>>> %ebp+8 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f2_exit              
    call    ReadInt                 #   1:     call   t14 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_3_while_cond:
    movl    $44335, %eax            #   3:     if     44335 < 6006 goto 4_while_body
    movl    $6006, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    movl    $98, %eax               #   6:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #   8:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_3_while_cond       #   9:     goto   3_while_cond
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t12      <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t4       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $51847, %eax            #   0:     add    t0 <- 51847, 39817
    movl    $39817, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 92201
    movl    $92201, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 97895
    movl    $97895, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t3 <- t2, 89219
    movl    $89219, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    jmp     l_test_exit            
    movl    $76386, %eax            #   7:     div    t5 <- 76386, 30134
    movl    $30134, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     mul    t6 <- t5, 11610
    movl    $11610, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   9:     div    t7 <- t6, 69739
    movl    $69739, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  10:     div    t8 <- t7, 37206
    movl    $37206, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     sub    t9 <- t8, 12052
    movl    $12052, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  12:     sub    t10 <- t9, 11437
    movl    $11437, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     assign v0 <- t10
    movl    %eax, v0               
    jmp     l_test_5                #  14:     goto   5
l_test_5:
    movl    $1, %eax                #  16:     assign t11 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_7                #  17:     goto   7
    movl    $0, %eax                #  18:     assign t11 <- 0
    movb    %al, -25(%ebp)         
l_test_7:
    movzbl  -25(%ebp), %eax         #  20:     assign v1 <- t11
    movb    %al, v1                
    jmp     l_test_13_if_false      #  21:     goto   13_if_false
    movl    $99, %eax               #  22:     if     99 > 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_15              
    jmp     l_test_16               #  23:     goto   16
l_test_15:
    movl    $1, %eax                #  25:     assign t12 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_17               #  26:     goto   17
l_test_16:
    movl    $0, %eax                #  28:     assign t12 <- 0
    movb    %al, -26(%ebp)         
l_test_17:
    movzbl  -26(%ebp), %eax         #  30:     assign v1 <- t12
    movb    %al, v1                
    call    ReadInt                 #  31:     call   t13 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_test_20               #  32:     goto   20
l_test_20:
    jmp     l_test_11               #  34:     goto   11
l_test_13_if_false:
l_test_11:

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
