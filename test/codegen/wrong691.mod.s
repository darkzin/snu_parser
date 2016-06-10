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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t17      <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t18      <bool> %ebp-46 ]
    #    -47(%ebp)   1  [ $t19      <bool> %ebp-47 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t39      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t40      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t41      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t42      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t5       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 9 of <array 9 of <array 10 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 5 of <array 8 of <array 2 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 6 of <array 7 of <array 10 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #   -176(%ebp)   4  [ $v5       <int> %ebp-176 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   3:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   4:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $14514, %eax            #   5:     mul    t2 <- 14514, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   6:     add    t3 <- t2, 65507
    movl    $65507, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -96(%ebp), %eax         #  10:     mul    t5 <- t3, t4
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  11:     add    t6 <- t5, 80146
    movl    $80146, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -160(%ebp), %eax        #  15:     mul    t8 <- t6, t7
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  16:     add    t9 <- t8, 62570
    movl    $62570, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -172(%ebp), %eax        #  20:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t12 <- t11, 95770
    movl    $95770, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    20(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  24:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  25:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  26:     add    t16 <- v4, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $0, %eax                #  27:     assign @t16 <- 0
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_1_while_cond       #  28:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_10                 #  30:     goto   10
    jmp     l_f0_10                 #  31:     goto   10
    call    dummyBOOLfunc           #  32:     call   t17 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  33:     if     t17 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  34:     goto   11
l_f0_10:
    movl    $1, %eax                #  36:     assign t18 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f0_12                 #  37:     goto   12
l_f0_11:
    movl    $0, %eax                #  39:     assign t18 <- 0
    movb    %al, -46(%ebp)         
l_f0_12:
    movl    $1, %eax                #  41:     if     1 = t18 goto 6
    movzbl  -46(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_7                  #  42:     goto   7
l_f0_6:
    movl    $1, %eax                #  44:     assign t19 <- 1
    movb    %al, -47(%ebp)         
    jmp     l_f0_8                  #  45:     goto   8
l_f0_7:
    movl    $0, %eax                #  47:     assign t19 <- 0
    movb    %al, -47(%ebp)         
l_f0_8:
    movzbl  -47(%ebp), %eax         #  49:     return t19
    jmp     l_f0_exit              
    movl    $66139, %eax            #  50:     add    t20 <- 66139, 71037
    movl    $71037, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  51:     sub    t21 <- t20, 22573
    movl    $22573, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  52:     sub    t22 <- t21, 2445
    movl    $2445, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  53:     add    t23 <- t22, 28956
    movl    $28956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $56496, %eax            #  54:     add    t24 <- 56496, 17092
    movl    $17092, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  55:     add    t25 <- t24, 84059
    movl    $84059, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  56:     sub    t26 <- t25, 97720
    movl    $97720, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #  57:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  58:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  59:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  60:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  61:     add    t29 <- t28, 89260
    movl    $89260, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  62:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  63:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  64:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  65:     mul    t31 <- t29, t30
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  66:     add    t32 <- t31, 70230
    movl    $70230, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  67:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  68:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  69:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  70:     mul    t34 <- t32, t33
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  71:     add    t35 <- t34, 14499
    movl    $14499, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  72:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  73:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  74:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  75:     mul    t37 <- t35, t36
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  76:     add    t38 <- t37, 8589
    movl    $8589, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  77:     mul    t39 <- t38, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    12(%ebp), %eax          #  78:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  79:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -144(%ebp)       
    movl    -136(%ebp), %eax        #  80:     add    t41 <- t39, t40
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    12(%ebp), %eax          #  81:     add    t42 <- v2, t41
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -68(%ebp), %eax         #  82:     assign @t42 <- t23
    movl    -152(%ebp), %edi       
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 6 of <array 7 of <array 10 of <array 7 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 5 of <array 8 of <array 2 of <array 9 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <array 9 of <array 9 of <array 10 of <array 7 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <char> %ebp-42 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #   -113468(%ebp)  113424  [ $v5       <array 5 of <array 9 of <array 9 of <array 10 of <array 7 of <int>>>>>> %ebp-113468 ]
    #   -127892(%ebp)  14424  [ $v6       <array 5 of <array 5 of <array 8 of <array 2 of <array 9 of <int>>>>>> %ebp-127892 ]
    #   -133796(%ebp)  5904  [ $v7       <array 2 of <array 6 of <array 7 of <array 10 of <array 7 of <bool>>>>>> %ebp-133796 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $133784, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $33446, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-113468(%ebp)        # local array 'v5': 5 dimensions
    movl    $5,-113464(%ebp)        #   dimension 1: 5 elements
    movl    $9,-113460(%ebp)        #   dimension 2: 9 elements
    movl    $9,-113456(%ebp)        #   dimension 3: 9 elements
    movl    $10,-113452(%ebp)       #   dimension 4: 10 elements
    movl    $7,-113448(%ebp)        #   dimension 5: 7 elements
    movl    $5,-127892(%ebp)        # local array 'v6': 5 dimensions
    movl    $5,-127888(%ebp)        #   dimension 1: 5 elements
    movl    $5,-127884(%ebp)        #   dimension 2: 5 elements
    movl    $8,-127880(%ebp)        #   dimension 3: 8 elements
    movl    $2,-127876(%ebp)        #   dimension 4: 2 elements
    movl    $9,-127872(%ebp)        #   dimension 5: 9 elements
    movl    $5,-133796(%ebp)        # local array 'v7': 5 dimensions
    movl    $2,-133792(%ebp)        #   dimension 1: 2 elements
    movl    $6,-133788(%ebp)        #   dimension 2: 6 elements
    movl    $7,-133784(%ebp)        #   dimension 3: 7 elements
    movl    $10,-133780(%ebp)       #   dimension 4: 10 elements
    movl    $7,-133776(%ebp)        #   dimension 5: 7 elements

    # function body
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $34968, %eax            #   5:     if     34968 >= 53681 goto 5_if_true
    movl    $53681, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyProcedure          #  11:     call   dummyProcedure
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    movl    $66142, %eax            #  14:     sub    t2 <- 66142, 90252
    movl    $90252, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t3 <- t2, 22981
    movl    $22981, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t4 <- t3, 66221
    movl    $66221, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4693, %eax             #  17:     if     4693 <= t4 goto 10_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  18:     goto   11_if_false
l_f1_10_if_true:
    movl    $0, %eax                #  20:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    leal    -133796(%ebp), %eax     #  21:     &()    t5 <- v7
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     param  3 <- t5
    pushl   %eax                   
    leal    -127892(%ebp), %eax     #  23:     &()    t6 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     param  2 <- t6
    pushl   %eax                   
    leal    -113468(%ebp), %eax     #  25:     &()    t7 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     param  1 <- t7
    pushl   %eax                   
    movl    $0, %eax                #  27:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  28:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    jmp     l_f1_9                  #  29:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyCHARfunc           #  32:     call   t9 <- dummyCHARfunc
    movb    %al, -42(%ebp)         

l_f1_exit:
    # epilogue
    addl    $133784, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
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
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 9 of <array 4 of <array 2 of <int>>>>>>> %ebp+8 ]
    #   -100(%ebp)   4  [ $v2       <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $v3       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $87293, %eax            #   0:     if     87293 <= 13806 goto 1_if_true
    movl    $13806, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $94551, %eax            #   4:     return 94551
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyINTfunc            #   8:     call   t2 <- dummyINTfunc
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   9:     add    t3 <- t2, 84492
    movl    $84492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  10:     sub    t4 <- t3, 12481
    movl    $12481, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  11:     add    t5 <- t4, 63776
    movl    $63776, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  15:     mul    t7 <- t5, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  16:     add    t8 <- t7, 52248
    movl    $52248, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  20:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t11 <- t10, 84586
    movl    $84586, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t14 <- t13, 7613
    movl    $7613, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t17 <- t16, 584
    movl    $584, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  34:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  35:     add    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t21 <- v1, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $18541, %eax            #  37:     assign @t21 <- 18541
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $1, %eax                #  38:     if     1 # 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  39:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_11                 #  41:     goto   11
l_f2_11:
    movl    $18857, %eax            #  43:     return 18857
    jmp     l_f2_exit              
    movl    $0, %eax                #  44:     assign v3 <- 0
    movb    %al, -101(%ebp)        
    movl    $1401, %eax             #  45:     return 1401
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  46:     goto   7
l_f2_9_if_false:
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $99, %eax               #   2:     if     99 > 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    call    dummyProcedure          #   6:     call   dummyProcedure
    movl    $63616, %eax            #   7:     assign v0 <- 63616
    movl    %eax, v0               
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_11_while_cond:
    call    ReadInt                 #  13:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
