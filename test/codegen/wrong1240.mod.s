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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t6       <char> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 89 of <array 61 of <array 86 of <array 22 of <array 57 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 49 of <array 36 of <array 91 of <array 13 of <array 84 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 63 of <array 36 of <array 49 of <array 30 of <array 79 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -24(%ebp)         
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -24(%ebp), %eax         #   2:     if     t6 <= t7 goto 1
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -26(%ebp)         
l_f0_3:
    movzbl  -26(%ebp), %eax         #  10:     return t8
    jmp     l_f0_exit              
    movl    $31679, %eax            #  11:     div    t9 <- 31679, 94810
    movl    $94810, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     sub    t10 <- t9, 87095
    movl    $87095, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     sub    t11 <- t10, 31864
    movl    $31864, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $80885, %eax            #  14:     if     80885 <= t11 goto 6
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #  15:     goto   7
l_f0_6:
    movl    $1, %eax                #  17:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #  18:     goto   8
l_f0_7:
    movl    $0, %eax                #  20:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_8:
    movzbl  -21(%ebp), %eax         #  22:     return t12
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  23:     call   t13 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  24:     if     t13 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11                
l_f0_11:
    movl    $1, %eax                #  26:     assign t14 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_13                 #  27:     goto   13
    movl    $0, %eax                #  28:     assign t14 <- 0
    movb    %al, -23(%ebp)         
l_f0_13:
    movzbl  -23(%ebp), %eax         #  30:     return t14
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 42 of <array 33 of <array 78 of <array 26 of <array 88 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $99, %eax               #   0:     if     99 # 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $85140, %eax            #  10:     mul    t7 <- 85140, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  11:     add    t8 <- t7, 58935
    movl    $58935, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  15:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $49851, %eax            #  16:     sub    t11 <- 49851, 68298
    movl    $68298, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     sub    t12 <- t11, 24936
    movl    $24936, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     sub    t13 <- t12, 84476
    movl    $84476, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     sub    t14 <- t13, 14620
    movl    $14620, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t15 <- t10, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     add    t18 <- t17, 92842
    movl    $92842, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  29:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     add    t21 <- t20, 70774
    movl    $70774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  33:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  34:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t25 <- v0, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $88868, %eax            #  36:     assign @t25 <- 88868
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_0                  #  37:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  40:     call   t26 <- dummyINTfunc
    movl    %eax, -80(%ebp)        
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  42:     goto   10_while_cond

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 63 of <array 36 of <array 49 of <array 30 of <array 79 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <ptr(4) to <array 49 of <array 36 of <array 91 of <array 13 of <array 84 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <ptr(4) to <array 89 of <array 61 of <array 86 of <array 22 of <array 57 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t15      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 42 of <array 33 of <array 78 of <array 26 of <array 88 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <bool> %ebp-45 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 11 of <array 1 of <array 91 of <array 85 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -46(%ebp)   1  [ $v2       <bool> %ebp-46 ]
    #   -989404488(%ebp)  989404440  [ $v3       <array 42 of <array 33 of <array 78 of <array 26 of <array 88 of <int>>>>>> %ebp-989404488 ]
    #   -1574889588(%ebp)  585485100  [ $v4       <array 89 of <array 61 of <array 86 of <array 22 of <array 57 of <char>>>>>> %ebp-1574889588 ]
    #   2018908852(%ebp)  701168856  [ $v5       <array 49 of <array 36 of <array 91 of <array 13 of <array 84 of <int>>>>>> %ebp+2018908852 ]
    #   965377468(%ebp)  1053531384  [ $v6       <array 63 of <array 36 of <array 49 of <array 30 of <array 79 of <int>>>>>> %ebp+965377468 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-965377480, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $832397454, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-989404488(%ebp)     # local array 'v3': 5 dimensions
    movl    $42,-989404484(%ebp)    #   dimension 1: 42 elements
    movl    $33,-989404480(%ebp)    #   dimension 2: 33 elements
    movl    $78,-989404476(%ebp)    #   dimension 3: 78 elements
    movl    $26,-989404472(%ebp)    #   dimension 4: 26 elements
    movl    $88,-989404468(%ebp)    #   dimension 5: 88 elements
    movl    $5,-1574889588(%ebp)    # local array 'v4': 5 dimensions
    movl    $89,-1574889584(%ebp)   #   dimension 1: 89 elements
    movl    $61,-1574889580(%ebp)   #   dimension 2: 61 elements
    movl    $86,-1574889576(%ebp)   #   dimension 3: 86 elements
    movl    $22,-1574889572(%ebp)   #   dimension 4: 22 elements
    movl    $57,-1574889568(%ebp)   #   dimension 5: 57 elements
    movl    $5,2018908852(%ebp)     # local array 'v5': 5 dimensions
    movl    $49,2018908856(%ebp)    #   dimension 1: 49 elements
    movl    $36,2018908860(%ebp)    #   dimension 2: 36 elements
    movl    $91,2018908864(%ebp)    #   dimension 3: 91 elements
    movl    $13,2018908868(%ebp)    #   dimension 4: 13 elements
    movl    $84,2018908872(%ebp)    #   dimension 5: 84 elements
    movl    $5,965377468(%ebp)      # local array 'v6': 5 dimensions
    movl    $63,965377472(%ebp)     #   dimension 1: 63 elements
    movl    $36,965377476(%ebp)     #   dimension 2: 36 elements
    movl    $49,965377480(%ebp)     #   dimension 3: 49 elements
    movl    $30,965377484(%ebp)     #   dimension 4: 30 elements
    movl    $79,965377488(%ebp)     #   dimension 5: 79 elements

    # function body
    movl    $31589, %eax            #   0:     if     31589 > 54762 goto 1_if_true
    movl    $54762, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $4240, %eax             #   3:     sub    t6 <- 4240, 34473
    movl    $34473, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     param  1 <- t6
    pushl   %eax                   
    leal    -989404488(%ebp), %eax  #   5:     &()    t7 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #   7:     call   t8 <- f1
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     if     t8 # 75588 goto 5
    movl    $75588, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #   9:     goto   6
l_f2_5:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -45(%ebp)         
l_f2_7:
    movzbl  -45(%ebp), %eax         #  16:     assign v2 <- t9
    movb    %al, -46(%ebp)         
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  20:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  21:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #  22:     if     t10 >= t11 goto 10_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  23:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  25:     goto   9
l_f2_11_if_false:
l_f2_9:
    leal    965377468(%ebp), %eax   #  28:     &()    t12 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     param  3 <- t12
    pushl   %eax                   
    leal    2018908852(%ebp), %eax  #  30:     &()    t13 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     param  2 <- t13
    pushl   %eax                   
    movl    $54119, %eax            #  32:     param  1 <- 54119
    pushl   %eax                   
    leal    -1574889588(%ebp), %eax #  33:     &()    t14 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  35:     call   t15 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $-965377480, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 63 of <array 36 of <array 49 of <array 30 of <array 79 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 49 of <array 36 of <array 91 of <array 13 of <array 84 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 89 of <array 61 of <array 86 of <array 22 of <array 57 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
    movl    $44275, %eax            #   0:     if     44275 >= 41788 goto 1_if_true
    movl    $41788, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $73357, %eax            #   3:     if     73357 <= 60033 goto 5_if_true
    movl    $60033, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
l_test_12_while_cond:
    movl    $86501, %eax            #  13:     if     86501 > 40946 goto 13_while_body
    movl    $40946, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
    call    ReadInt                 #  19:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_8                #  21:     goto   8
l_test_8:
    call    dummyProcedure          #  23:     call   dummyProcedure
    movl    $13574, %eax            #  24:     if     13574 > 884 goto 20_if_true
    movl    $884, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_20_if_true      
    jmp     l_test_21_if_false      #  25:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_exit            
    jmp     l_test_19               #  28:     goto   19
l_test_21_if_false:
l_test_19:
    call    dummyCHARfunc           #  31:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    leal    v2, %eax                #  32:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     param  3 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  34:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     param  2 <- t3
    pushl   %eax                   
    movl    $24054, %eax            #  36:     param  1 <- 24054
    pushl   %eax                   
    leal    v0, %eax                #  37:     &()    t4 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  39:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -33(%ebp)         

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <array 89 of <array 61 of <array 86 of <array 22 of <array 57 of <char>>>>>>
    .long    5
    .long   89
    .long   61
    .long   86
    .long   22
    .long   57
    .skip 585485076
v1:                                 # <array 49 of <array 36 of <array 91 of <array 13 of <array 84 of <int>>>>>>
    .long    5
    .long   49
    .long   36
    .long   91
    .long   13
    .long   84
    .skip 701168832
v2:                                 # <array 63 of <array 36 of <array 49 of <array 30 of <array 79 of <int>>>>>>
    .long    5
    .long   63
    .long   36
    .long   49
    .long   30
    .long   79
    .skip 1053531360








    # end of global data section
    #-----------------------------------------

    .end
##################################################
