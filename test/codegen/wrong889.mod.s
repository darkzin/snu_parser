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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   5:     return 97
    jmp     l_f0_exit              
l_f0_5_while_cond:
    jmp     l_f0_4                  #   7:     goto   4
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
    movl    $99, %eax               #  10:     assign v0 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_9_if_true          #  13:     goto   9_if_true
    jmp     l_f0_9_if_true          #  14:     goto   9_if_true
    jmp     l_f0_10_if_false        #  15:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_15_if_false        #  17:     goto   15_if_false
    jmp     l_f0_13                 #  18:     goto   13
l_f0_15_if_false:
l_f0_13:
    call    WriteLn                 #  21:     call   WriteLn
    movl    $98, %eax               #  22:     assign v0 <- 98
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  23:     if     97 < 97 goto 19_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  24:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  26:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_8                  #  29:     goto   8
l_f0_10_if_false:
l_f0_8:
    call    dummyCHARfunc           #  32:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t3       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t7       <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t8       <char> %ebp-94 ]
    #    -95(%ebp)   1  [ $t9       <bool> %ebp-95 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 1 of <array 3 of <array 5 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 10 of <array 7 of <array 3 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 4 of <array 8 of <array 8 of <array 10 of <char>>>>>>> %ebp+20 ]
    #    -96(%ebp)   1  [ $v4       <char> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $38138, %eax            #   0:     mul    t3 <- 38138, 71891
    movl    $71891, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     div    t4 <- t3, 40756
    movl    $40756, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   2:     mul    t5 <- t4, 18431
    movl    $18431, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   3:     div    t6 <- t5, 87527
    movl    $87527, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $30207, %eax            #   4:     if     30207 >= t6 goto 1
    movl    -92(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -93(%ebp)         
l_f1_3:
    movzbl  -93(%ebp), %eax         #  12:     assign v1 <- t7
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  13:     call   t8 <- dummyCHARfunc
    movb    %al, -94(%ebp)         
    call    dummyBOOLfunc           #  14:     call   t9 <- dummyBOOLfunc
    movb    %al, -95(%ebp)         
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $54797, %eax            #  18:     mul    t11 <- 54797, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 773
    movl    $773, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 69027
    movl    $69027, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  28:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t18 <- t17, 78214
    movl    $78214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  32:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  33:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     add    t21 <- t20, 33440
    movl    $33440, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  35:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    20(%ebp), %eax          #  36:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  37:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  38:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    20(%ebp), %eax          #  39:     add    t25 <- v3, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $100, %eax              #  40:     assign @t25 <- 100
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $0, %eax                #  41:     return 0
    jmp     l_f1_exit              
    movl    $56431, %eax            #  42:     if     56431 < 21267 goto 14_if_true
    movl    $21267, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  43:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  45:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_6                  #  48:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $53730, %eax            #   1:     add    t4 <- 53730, t3
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $56043, %eax            #   2:     if     56043 > t4 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    movl    $99, %eax               #   9:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $98, %eax               #  10:     if     98 # 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_12                 #  14:     goto   12
l_f2_11:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_12:
    movzbl  -21(%ebp), %eax         #  18:     assign v1 <- t5
    movb    %al, -22(%ebp)         
    movl    $30502, %eax            #  19:     assign v2 <- 30502
    movl    %eax, -28(%ebp)        
l_f2_16_while_cond:
    movl    $53197, %eax            #  21:     if     53197 >= 63385 goto 17_while_body
    movl    $63385, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_17_while_body     
    jmp     l_f2_15                 #  22:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  24:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_exit              
    jmp     l_f2_4                  #  27:     goto   4
l_f2_4:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    movl    $34932, %eax            #   2:     add    t0 <- 34932, 69853
    movl    $69853, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 < 33470 goto 3_while_body
    movl    $33470, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    movl    $1, %eax                #   6:     if     1 # 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   9:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $68454, %eax            #  12:     if     68454 < 4986 goto 10
    movl    $4986, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_10              
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_12               #  16:     goto   12
l_test_11:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_12:
    movzbl  -17(%ebp), %eax         #  20:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  22:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #  24:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_19               #  25:     goto   19
l_test_19:
    jmp     l_test_15               #  27:     goto   15
l_test_15:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
