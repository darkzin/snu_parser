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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

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
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, -21(%ebp)         
    movl    $20671, %eax            #   1:     if     20671 <= 14842 goto 2_if_true
    movl    $14842, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    call    dummyINTfunc            #   6:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 90 of <array 10 of <array 48 of <array 24 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 54 of <array 68 of <array 13 of <array 2 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 19 of <array 15 of <array 97 of <array 85 of <array 37 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -93(%ebp)   1  [ $v5       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $v6       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     assign v5 <- 99
    movb    %al, -93(%ebp)         
    movl    $12382, %eax            #   1:     div    t2 <- 12382, 90911
    movl    $90911, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     sub    t3 <- t2, 37390
    movl    $37390, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   3:     sub    t4 <- t3, 50150
    movl    $50150, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   4:     sub    t5 <- t4, 47534
    movl    $47534, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $78700, %eax            #   8:     mul    t7 <- 78700, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   9:     add    t8 <- t7, 44647
    movl    $44647, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  13:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t11 <- t10, 18153
    movl    $18153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t14 <- t13, 72650
    movl    $72650, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t17 <- t16, 38303
    movl    $38303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t21 <- v2, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -76(%ebp), %eax         #  30:     assign @t21 <- t5
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $66957, %eax            #  31:     if     66957 > 18384 goto 3_if_true
    movl    $18384, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  32:     goto   4_if_false
l_f1_3_if_true:
    movl    $98324, %eax            #  34:     assign v6 <- 98324
    movl    %eax, -100(%ebp)       
    jmp     l_f1_exit              
l_f1_9_while_cond:
    movl    $5748, %eax             #  37:     if     5748 < 37584 goto 10_while_body
    movl    $37584, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  38:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  40:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_14_if_false        #  42:     goto   14_if_false
    jmp     l_f1_12                 #  43:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $100, %eax              #  46:     assign v5 <- 100
    movb    %al, -93(%ebp)         
    jmp     l_f1_2                  #  47:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 20 of <array 61 of <array 68 of <array 86 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
    call    dummyINTfunc            #   2:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     return t4
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 54 of <array 20 of <array 61 of <array 68 of <array 86 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
l_test_6_while_cond:
    movl    $1, %eax                #   4:     if     1 = 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    movl    $98, %eax               #  11:     if     98 # 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    movl    $97, %eax               #  14:     assign v0 <- 97
    movb    %al, v0                
    movl    $18696, %eax            #  15:     if     18696 <= 67737 goto 15_if_true
    movl    $67737, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15_if_true      
    jmp     l_test_16_if_false      #  16:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  18:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $84325, %eax            #  21:     if     84325 > 17668 goto 19_if_true
    movl    $17668, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_19_if_true      
    jmp     l_test_20_if_false      #  22:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  24:     goto   18
l_test_20_if_false:
l_test_18:
l_test_23_while_cond:
    jmp     l_test_22               #  28:     goto   22
    jmp     l_test_23_while_cond    #  29:     goto   23_while_cond
l_test_22:
    jmp     l_test_9                #  31:     goto   9
l_test_11_if_false:
l_test_9:
l_test_26_while_cond:
    jmp     l_test_27_while_body    #  35:     goto   27_while_body
    jmp     l_test_27_while_body    #  36:     goto   27_while_body
    jmp     l_test_25               #  37:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  39:     goto   26_while_cond
l_test_25:
    movl    $98, %eax               #  41:     if     98 > 99 goto 35_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_35_if_true      
    jmp     l_test_36_if_false      #  42:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_34               #  44:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_exit            
l_test_40_while_cond:
    jmp     l_test_40_while_cond    #  49:     goto   40_while_cond
    leal    v1, %eax                #  50:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  51:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #  52:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_test_31               #  53:     goto   31
l_test_31:
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 54 of <array 20 of <array 61 of <array 68 of <array 86 of <bool>>>>>>
    .long    5
    .long   54
    .long   20
    .long   61
    .long   68
    .long   86
    .skip 385266240








    # end of global data section
    #-----------------------------------------

    .end
##################################################
