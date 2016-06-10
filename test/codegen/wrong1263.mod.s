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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <char> %ebp-26 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t4
    movb    %al, -26(%ebp)         
    movl    $649, %eax              #   2:     add    t5 <- 649, 67013
    movl    $67013, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t6 <- t5, 3135
    movl    $3135, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $61846, %eax            #   4:     if     61846 < t6 goto 2_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   5:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $100, %eax              #   8:     if     100 < 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_7_while_body      
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  11:     goto   6_while_cond
l_f0_5:
    call    dummyCHARfunc           #  13:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_12_if_false        #  17:     goto   12_if_false
    movl    $16000, %eax            #  18:     if     16000 > 8222 goto 15_if_true
    movl    $8222, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  19:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  21:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_18                 #  24:     goto   18
l_f0_18:
    jmp     l_f0_10                 #  26:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 28 of <array 98 of <array 75 of <array 9 of <array 54 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 31 of <array 85 of <array 36 of <array 70 of <array 44 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
l_f1_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t5 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   7:     goto   3_while_cond
l_f1_2:

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
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t4       <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 36 of <array 67 of <array 49 of <array 8 of <array 18 of <bool>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v1       <bool> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t4 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t4 <- 0
    movb    %al, -58(%ebp)         
l_f2_3:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $75388, %eax            #   9:     mul    t6 <- 75388, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  10:     add    t7 <- t6, 56756
    movl    $56756, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  14:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  15:     add    t10 <- t9, 87393
    movl    $87393, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  19:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t13 <- t12, 97456
    movl    $97456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t16 <- t15, 90065
    movl    $90065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  28:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  30:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -58(%ebp), %eax         #  31:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_6_if_true          #  32:     goto   6_if_true
l_f2_6_if_true:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  35:     goto   9
    jmp     l_f2_10_while_cond      #  36:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_5                  #  38:     goto   5
l_f2_5:
    call    dummyCHARfunc           #  40:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  41:     return t21
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 36 of <array 67 of <array 49 of <array 8 of <array 18 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    leal    v0, %eax                #   6:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   8:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   9:     if     t1 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  12:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyINTfunc            #  15:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  16:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  17:     assign v1 <- t3
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 36 of <array 67 of <array 49 of <array 8 of <array 18 of <bool>>>>>>
    .long    5
    .long   36
    .long   67
    .long   49
    .long    8
    .long   18
    .skip 17019072
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
