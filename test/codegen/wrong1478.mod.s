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
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 > t4 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $100, %eax              #   6:     if     100 >= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1                  #  11:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     assign v3 <- t5
    movb    %al, -15(%ebp)         

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
    #    -73(%ebp)   1  [ $t4       <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t6       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 100 of <array 81 of <array 16 of <array 59 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 30 of <array 23 of <array 18 of <array 77 of <array 26 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 35 of <array 41 of <array 86 of <array 78 of <array 26 of <char>>>>>>> %ebp+20 ]
    #    -97(%ebp)   1  [ $v4       <bool> %ebp-97 ]

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
l_f1_1_while_cond:
l_f1_4_while_cond:
    movl    $97, %eax               #   2:     if     97 >= 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_9_if_false         #   7:     goto   9_if_false
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_if_false:
l_f1_7:
    call    dummyBOOLfunc           #  11:     call   t4 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
    call    dummyINTfunc            #  14:     call   t5 <- dummyINTfunc
    movl    %eax, -80(%ebp)        
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $100, %eax              #  18:     if     100 >= 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  19:     goto   18
l_f1_17:
    movl    $1, %eax                #  21:     assign t6 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_19                 #  22:     goto   19
l_f1_18:
    movl    $0, %eax                #  24:     assign t6 <- 0
    movb    %al, -81(%ebp)         
l_f1_19:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $44725, %eax            #  29:     mul    t8 <- 44725, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $5890, %eax             #  30:     add    t9 <- 5890, 20007
    movl    $20007, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  31:     sub    t10 <- t9, 77687
    movl    $77687, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  32:     add    t11 <- t8, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  36:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  37:     add    t14 <- t13, 79215
    movl    $79215, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  41:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  42:     add    t17 <- t16, 36924
    movl    $36924, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  46:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  47:     add    t20 <- t19, 11953
    movl    $11953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  48:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  50:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  51:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  52:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -81(%ebp), %eax         #  53:     assign @t24 <- t6
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 35 of <array 41 of <array 86 of <array 78 of <array 26 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 30 of <array 23 of <array 18 of <array 77 of <array 26 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 2 of <array 100 of <array 81 of <array 16 of <array 59 of <int>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t27      <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $t4       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t5       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 45 of <array 24 of <array 86 of <array 27 of <array 81 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 37 of <array 35 of <array 20 of <array 75 of <int>>>>>>> %ebp+12 ]
    #   -112(%ebp)   4  [ $v2       <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $v3       <char> %ebp-113 ]
    #   -61171340(%ebp)  61171224  [ $v4       <array 2 of <array 100 of <array 81 of <array 16 of <array 59 of <int>>>>>> %ebp-61171340 ]
    #   -86036204(%ebp)  24864864  [ $v5       <array 30 of <array 23 of <array 18 of <array 77 of <array 26 of <bool>>>>>> %ebp-86036204 ]
    #   -336311708(%ebp)  250275504  [ $v6       <array 35 of <array 41 of <array 86 of <array 78 of <array 26 of <char>>>>>> %ebp-336311708 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $336311696, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $84077924, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-61171340(%ebp)      # local array 'v4': 5 dimensions
    movl    $2,-61171336(%ebp)      #   dimension 1: 2 elements
    movl    $100,-61171332(%ebp)    #   dimension 2: 100 elements
    movl    $81,-61171328(%ebp)     #   dimension 3: 81 elements
    movl    $16,-61171324(%ebp)     #   dimension 4: 16 elements
    movl    $59,-61171320(%ebp)     #   dimension 5: 59 elements
    movl    $5,-86036204(%ebp)      # local array 'v5': 5 dimensions
    movl    $30,-86036200(%ebp)     #   dimension 1: 30 elements
    movl    $23,-86036196(%ebp)     #   dimension 2: 23 elements
    movl    $18,-86036192(%ebp)     #   dimension 3: 18 elements
    movl    $77,-86036188(%ebp)     #   dimension 4: 77 elements
    movl    $26,-86036184(%ebp)     #   dimension 5: 26 elements
    movl    $5,-336311708(%ebp)     # local array 'v6': 5 dimensions
    movl    $35,-336311704(%ebp)    #   dimension 1: 35 elements
    movl    $41,-336311700(%ebp)    #   dimension 2: 41 elements
    movl    $86,-336311696(%ebp)    #   dimension 3: 86 elements
    movl    $78,-336311692(%ebp)    #   dimension 4: 78 elements
    movl    $26,-336311688(%ebp)    #   dimension 5: 26 elements

    # function body
    movl    $57007, %eax            #   0:     sub    t4 <- 57007, 66747
    movl    $66747, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   1:     add    t5 <- t4, 88362
    movl    $88362, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   2:     sub    t6 <- t5, 88113
    movl    $88113, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   5:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #   6:     mul    t8 <- t6, t7
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   7:     add    t9 <- t8, 45026
    movl    $45026, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -108(%ebp), %eax        #  11:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $35677, %eax            #  12:     add    t12 <- 35677, 30207
    movl    $30207, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  17:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t16 <- t15, 84065
    movl    $84065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  23:     add    t19 <- t18, 93446
    movl    $93446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t23 <- v0, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $25496, %eax            #  29:     assign @t23 <- 25496
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_exit              
    movl    $97, %eax               #  31:     if     97 <= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  32:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_exit              
    movl    $100, %eax              #  35:     assign v3 <- 100
    movb    %al, -113(%ebp)        
    leal    -336311708(%ebp), %eax  #  36:     &()    t24 <- v6
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  37:     param  3 <- t24
    pushl   %eax                   
    leal    -86036204(%ebp), %eax   #  38:     &()    t25 <- v5
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  39:     param  2 <- t25
    pushl   %eax                   
    leal    -61171340(%ebp), %eax   #  40:     &()    t26 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  41:     param  1 <- t26
    pushl   %eax                   
    movl    $23624, %eax            #  42:     param  0 <- 23624
    pushl   %eax                   
    call    f1                      #  43:     call   t27 <- f1
    addl    $16, %esp              
    movb    %al, -81(%ebp)         
l_f2_10_while_cond:
    movl    $18035, %eax            #  45:     if     18035 < 79553 goto 11_while_body
    movl    $79553, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  46:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  48:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_2                  #  50:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $336311696, %esp        # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 37 of <array 35 of <array 20 of <array 75 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 45 of <array 24 of <array 86 of <array 27 of <array 81 of <int>>>>>>> %ebp-28 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    call    dummyINTfunc            #   3:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   4:     goto   0
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   7:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    leal    v1, %eax                #   9:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  11:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  13:     call   f2
    addl    $8, %esp               

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
v0:                                 # <array 45 of <array 24 of <array 86 of <array 27 of <array 81 of <int>>>>>>
    .long    5
    .long   45
    .long   24
    .long   86
    .long   27
    .long   81
    .skip 812514240
v1:                                 # <array 9 of <array 37 of <array 35 of <array 20 of <array 75 of <int>>>>>>
    .long    5
    .long    9
    .long   37
    .long   35
    .long   20
    .long   75
    .skip 69930000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
