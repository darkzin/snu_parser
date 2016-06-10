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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 5 of <array 9 of <array 8 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 8 of <array 6 of <char>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $60801, %eax            #   0:     assign v4 <- 60801
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $25604, %eax            #   2:     if     25604 >= 44835 goto 3_if_true
    movl    $44835, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   6:     goto   7_while_cond
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   9:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $78556, %eax            #   0:     assign v1 <- 78556
    movl    %eax, 12(%ebp)         
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   2:     sub    t5 <- t4, 27359
    movl    $27359, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   3:     add    t6 <- t5, 56936
    movl    $56936, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   4:     sub    t7 <- t6, 73394
    movl    $73394, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     sub    t8 <- t7, 80714
    movl    $80714, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   6:     add    t9 <- t8, 4826
    movl    $4826, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   7:     sub    t10 <- t9, 498
    movl    $498, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     add    t11 <- t10, 78954
    movl    $78954, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t12 <- t11, 56106
    movl    $56106, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     return t12
    jmp     l_f1_exit              
    movl    $60926, %eax            #  11:     mul    t13 <- 60926, 32373
    movl    $32373, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     mul    t14 <- t13, 45448
    movl    $45448, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     mul    t15 <- t14, 81969
    movl    $81969, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     div    t16 <- t15, 40834
    movl    $40834, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     return t16
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f2_2_while_cond:
    movl    $93833, %eax            #   2:     param  1 <- 93833
    pushl   %eax                   
    movl    $1, %eax                #   3:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #   4:     call   t4 <- f1
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     div    t5 <- t4, 31351
    movl    $31351, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     if     t5 < 19188 goto 3_while_body
    movl    $19188, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
    movl    $99, %eax               #  11:     if     99 > 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  12:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  14:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $98, %eax               #  17:     return 98
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  18:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_16_if_false        #  19:     goto   16_if_false
    jmp     l_f2_14                 #  20:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_19_if_false        #  23:     goto   19_if_false
    jmp     l_f2_17                 #  24:     goto   17
l_f2_19_if_false:
l_f2_17:
l_f2_21_while_cond:
    movl    $82664, %eax            #  28:     if     82664 < 37878 goto 22_while_body
    movl    $37878, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_22_while_body     
    jmp     l_f2_20                 #  29:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  31:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_5                  #  33:     goto   5
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 >= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, v0                
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_9_if_false       #   6:     goto   9_if_false
    jmp     l_test_7                #   7:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_1                #  10:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $100, %eax              #  13:     if     100 > 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  14:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  17:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    jmp     l_test_10               #  19:     goto   10
l_test_12_if_false:
l_test_10:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
