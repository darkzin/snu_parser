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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_10_if_false        #   2:     goto   10_if_false
    jmp     l_f0_8                  #   3:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_1                  #   6:     goto   1
l_f0_1:
    movl    $98, %eax               #   8:     assign v1 <- 98
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t4       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t5       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t6       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t7       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t8       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t9       <int> %ebp-152 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 33 of <array 1 of <array 5 of <array 20 of <array 27 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 98 of <array 76 of <array 53 of <array 72 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 57 of <array 61 of <array 31 of <array 85 of <array 92 of <char>>>>>>> %ebp+20 ]
    #   -153(%ebp)   1  [ $v4       <char> %ebp-153 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $144, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $876, %eax              #   0:     add    t1 <- 876, 36862
    movl    $36862, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 78332
    movl    $78332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
    movl    $34370, %eax            #   3:     assign v2 <- 34370
    movl    %eax, 16(%ebp)         
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
    movl    $47631, %eax            #   5:     return 47631
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $34004, %eax            #   7:     if     34004 <= 82418 goto 8_while_body
    movl    $82418, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_8_while_body      
    jmp     l_f1_6                  #   8:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  10:     goto   7_while_cond
l_f1_6:
    movl    $632, %eax              #  12:     return 632
    jmp     l_f1_exit              
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $52689, %eax            #  16:     mul    t4 <- 52689, t3
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  17:     add    t5 <- t4, 63543
    movl    $63543, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  21:     mul    t7 <- t5, t6
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  22:     add    t8 <- t7, 26993
    movl    $26993, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  26:     mul    t10 <- t8, t9
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     add    t11 <- t10, 94506
    movl    $94506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  31:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t14 <- t13, 12436
    movl    $12436, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  35:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t18 <- v0, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $98, %eax               #  38:     assign @t18 <- 98
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  40:     goto   13_while_cond
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  43:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $27388, %eax            #  44:     mul    t20 <- 27388, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     add    t21 <- t20, 91383
    movl    $91383, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  48:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  49:     mul    t23 <- t21, t22
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  50:     add    t24 <- t23, 21509
    movl    $21509, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  51:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  53:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  54:     mul    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  55:     add    t27 <- t26, 72521
    movl    $72521, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  56:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  57:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  58:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  59:     mul    t29 <- t27, t28
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  60:     add    t30 <- t29, 74304
    movl    $74304, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  61:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  62:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  63:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  64:     add    t33 <- t31, t32
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  65:     add    t34 <- v0, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $98, %eax               #  66:     assign @t34 <- 98
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    call    ReadInt                 #  67:     call   t35 <- ReadInt
    movl    %eax, -128(%ebp)       
    jmp     l_f1_2                  #  68:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $144, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <ptr(4) to <array 57 of <array 61 of <array 31 of <array 85 of <array 92 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <ptr(4) to <array 8 of <array 98 of <array 76 of <array 53 of <array 72 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <ptr(4) to <array 33 of <array 1 of <array 5 of <array 20 of <array 27 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t5       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t7       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]
    #   -89192(%ebp)  89124  [ $v0       <array 33 of <array 1 of <array 5 of <array 20 of <array 27 of <char>>>>>> %ebp-89192 ]
    #   -227461760(%ebp)  227372568  [ $v1       <array 8 of <array 98 of <array 76 of <array 53 of <array 72 of <char>>>>>> %ebp-227461760 ]
    #   -1070356124(%ebp)  842894364  [ $v2       <array 57 of <array 61 of <array 31 of <array 85 of <array 92 of <char>>>>>> %ebp-1070356124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1070356112, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $267589028, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-89192(%ebp)         # local array 'v0': 5 dimensions
    movl    $33,-89188(%ebp)        #   dimension 1: 33 elements
    movl    $1,-89184(%ebp)         #   dimension 2: 1 elements
    movl    $5,-89180(%ebp)         #   dimension 3: 5 elements
    movl    $20,-89176(%ebp)        #   dimension 4: 20 elements
    movl    $27,-89172(%ebp)        #   dimension 5: 27 elements
    movl    $5,-227461760(%ebp)     # local array 'v1': 5 dimensions
    movl    $8,-227461756(%ebp)     #   dimension 1: 8 elements
    movl    $98,-227461752(%ebp)    #   dimension 2: 98 elements
    movl    $76,-227461748(%ebp)    #   dimension 3: 76 elements
    movl    $53,-227461744(%ebp)    #   dimension 4: 53 elements
    movl    $72,-227461740(%ebp)    #   dimension 5: 72 elements
    movl    $5,-1070356124(%ebp)    # local array 'v2': 5 dimensions
    movl    $57,-1070356120(%ebp)   #   dimension 1: 57 elements
    movl    $61,-1070356116(%ebp)   #   dimension 2: 61 elements
    movl    $31,-1070356112(%ebp)   #   dimension 3: 31 elements
    movl    $85,-1070356108(%ebp)   #   dimension 4: 85 elements
    movl    $92,-1070356104(%ebp)   #   dimension 5: 92 elements

    # function body
l_f2_1_while_cond:
    movl    $42282, %eax            #   1:     sub    t1 <- 42282, 39032
    movl    $39032, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t2 <- t1, 99723
    movl    $99723, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     add    t3 <- t2, 20296
    movl    $20296, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     add    t4 <- t3, 23785
    movl    $23785, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $63046, %eax            #   5:     if     63046 >= t4 goto 2_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $84545, %eax            #  10:     add    t5 <- 84545, 91875
    movl    $91875, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  11:     sub    t6 <- t5, 64780
    movl    $64780, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  12:     add    t7 <- t6, 78211
    movl    $78211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  13:     add    t8 <- t7, 18957
    movl    $18957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     add    t9 <- t8, 27919
    movl    $27919, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  15:     add    t10 <- t9, 34829
    movl    $34829, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t10
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
    leal    -1070356124(%ebp), %eax #  18:     &()    t11 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  3 <- t11
    pushl   %eax                   
    movl    $27655, %eax            #  20:     param  2 <- 27655
    pushl   %eax                   
    leal    -227461760(%ebp), %eax  #  21:     &()    t12 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  1 <- t12
    pushl   %eax                   
    leal    -89192(%ebp), %eax      #  23:     &()    t13 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #  25:     call   t14 <- f1
    addl    $16, %esp              
    movl    %eax, -36(%ebp)        

l_f2_exit:
    # epilogue
    addl    $1070356112, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $33519, %eax            #   1:     assign v0 <- 33519
    movl    %eax, v0               
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $0, %eax                #   7:     assign v1 <- 0
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
