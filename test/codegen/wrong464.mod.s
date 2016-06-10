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
    #    -16(%ebp)   4  [ $t27      <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t28      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 1 of <array 4 of <array 7 of <array 7 of <int>>>>>>> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t27 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t27
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f0_2_while_cond:
    movl    $97, %eax               #   4:     if     97 # 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    movl    $32260, %eax            #   7:     if     32260 >= 90835 goto 6
    movl    $90835, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $1, %eax                #  10:     assign t28 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $0, %eax                #  13:     assign t28 <- 0
    movb    %al, -17(%ebp)         
l_f0_8:
    movzbl  -17(%ebp), %eax         #  15:     return t28
    jmp     l_f0_exit              
    call    dummyProcedure          #  16:     call   dummyProcedure
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
l_f0_1:
    call    dummyINTfunc            #  19:     call   t29 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -13(%ebp)   1  [ $t27      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t28      <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 4 of <array 5 of <array 2 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t27 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t27
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t28 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   3:     return 100
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
    #    -16(%ebp)   4  [ $t27      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t28      <ptr(4) to <array 9 of <array 4 of <array 5 of <array 2 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t29      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t30      <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t31      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t32      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t33      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t34      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t35      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t36      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t37      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t38      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t39      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t40      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t41      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t42      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t43      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t44      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t45      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t46      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t47      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t48      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t49      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t50      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t51      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t52      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t53      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t54      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t55      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t56      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t57      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t58      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t59      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t60      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t61      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t62      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t63      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t64      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t65      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t66      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t67      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t68      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t69      <int> %ebp-180 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 10 of <array 8 of <array 10 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 10 of <array 8 of <array 10 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 1 of <array 5 of <bool>>>>>>> %ebp+16 ]
    #   -3444(%ebp)  3264  [ $v3       <array 9 of <array 4 of <array 5 of <array 2 of <array 9 of <bool>>>>>> %ebp-3444 ]
    #   -13836(%ebp)  10392  [ $v4       <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>> %ebp-13836 ]
    #   -13837(%ebp)   1  [ $v5       <bool> %ebp-13837 ]
    #   -13844(%ebp)   4  [ $v6       <int> %ebp-13844 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13832, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3458, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3444(%ebp)          # local array 'v3': 5 dimensions
    movl    $9,-3440(%ebp)          #   dimension 1: 9 elements
    movl    $4,-3436(%ebp)          #   dimension 2: 4 elements
    movl    $5,-3432(%ebp)          #   dimension 3: 5 elements
    movl    $2,-3428(%ebp)          #   dimension 4: 2 elements
    movl    $9,-3424(%ebp)          #   dimension 5: 9 elements
    movl    $5,-13836(%ebp)         # local array 'v4': 5 dimensions
    movl    $8,-13832(%ebp)         #   dimension 1: 8 elements
    movl    $8,-13828(%ebp)         #   dimension 2: 8 elements
    movl    $3,-13824(%ebp)         #   dimension 3: 3 elements
    movl    $9,-13820(%ebp)         #   dimension 4: 9 elements
    movl    $6,-13816(%ebp)         #   dimension 5: 6 elements

    # function body
    leal    -13836(%ebp), %eax      #   0:     &()    t27 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t27
    pushl   %eax                   
    leal    -3444(%ebp), %eax       #   2:     &()    t28 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t28
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t29 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     param  0 <- t29
    pushl   %eax                   
    call    f1                      #   6:     call   t30 <- f1
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   7:     return t30
    jmp     l_f2_exit              
    movl    $98, %eax               #   8:     if     98 <= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   9:     goto   3_if_false
l_f2_2_if_true:
    leal    -13836(%ebp), %eax      #  11:     &()    t31 <- v4
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    leal    -13836(%ebp), %eax      #  13:     &()    t32 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  0 <- t32
    pushl   %eax                   
    call    DIM                     #  15:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    $44572, %eax            #  16:     mul    t34 <- 44572, t33
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     add    t35 <- t34, 92908
    movl    $92908, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    leal    -13836(%ebp), %eax      #  19:     &()    t36 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  20:     param  0 <- t36
    pushl   %eax                   
    call    DIM                     #  21:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t38 <- t35, t37
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     add    t39 <- t38, 69278
    movl    $69278, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    leal    -13836(%ebp), %eax      #  25:     &()    t40 <- v4
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  26:     param  0 <- t40
    pushl   %eax                   
    call    DIM                     #  27:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  28:     mul    t42 <- t39, t41
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  29:     add    t43 <- t42, 29029
    movl    $29029, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    leal    -13836(%ebp), %eax      #  31:     &()    t44 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  32:     param  0 <- t44
    pushl   %eax                   
    call    DIM                     #  33:     call   t45 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  34:     mul    t46 <- t43, t45
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  35:     add    t47 <- t46, 74749
    movl    $74749, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  36:     mul    t48 <- t47, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    -13836(%ebp), %eax      #  37:     &()    t49 <- v4
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  38:     param  0 <- t49
    pushl   %eax                   
    call    DOFS                    #  39:     call   t50 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  40:     add    t51 <- t48, t50
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -28(%ebp), %eax         #  41:     add    t52 <- t31, t51
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $0, %eax                #  42:     assign @t52 <- 0
    movl    -112(%ebp), %edi       
    movb    %al, (%edi)            
l_f2_7_while_cond:
    movl    $99551, %eax            #  44:     if     99551 <= 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #  45:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  47:     goto   7_while_cond
l_f2_6:
    movl    $2, %eax                #  49:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  50:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  51:     call   t53 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    $44267, %eax            #  52:     mul    t54 <- 44267, t53
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  53:     add    t55 <- t54, 47327
    movl    $47327, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  55:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  56:     call   t56 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  57:     mul    t57 <- t55, t56
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  58:     add    t58 <- t57, 87520
    movl    $87520, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $4, %eax                #  59:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  60:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  61:     call   t59 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  62:     mul    t60 <- t58, t59
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  63:     add    t61 <- t60, 25282
    movl    $25282, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $5, %eax                #  64:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  65:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  66:     call   t62 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  67:     mul    t63 <- t61, t62
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  68:     add    t64 <- t63, 77086
    movl    $77086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  69:     mul    t65 <- t64, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    12(%ebp), %eax          #  70:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  71:     call   t66 <- DOFS
    addl    $4, %esp               
    movl    %eax, -168(%ebp)       
    movl    -164(%ebp), %eax        #  72:     add    t67 <- t65, t66
    movl    -168(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    12(%ebp), %eax          #  73:     add    t68 <- v1, t67
    movl    -172(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    $12722, %eax            #  74:     assign @t68 <- 12722
    movl    -176(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f2_1                  #  75:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_12_while_cond:
    movl    $15050, %eax            #  79:     mul    t69 <- 15050, 70027
    movl    $70027, %ebx           
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  80:     if     t69 # 67936 goto 13_while_body
    movl    $67936, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13_while_body     
    jmp     l_f2_11                 #  81:     goto   11
l_f2_13_while_body:
    movl    $99, %eax               #  83:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_12_while_cond      #  84:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $13832, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 4 of <array 5 of <array 2 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <char> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <char> %ebp-93 ]
    #    -94(%ebp)   1  [ $t4       <bool> %ebp-94 ]
    #   -100(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   3:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #   6:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   7:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -93(%ebp)         
l_test_3_while_cond:
    jmp     l_test_2                #   9:     goto   2
    movl    $58156, %eax            #  10:     if     58156 < 46829 goto 8
    movl    $46829, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_8               
    jmp     l_test_9                #  11:     goto   9
l_test_8:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -94(%ebp)         
    jmp     l_test_10               #  14:     goto   10
l_test_9:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -94(%ebp)         
l_test_10:
    leal    v1, %eax                #  18:     &()    t5 <- v1
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t6 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  21:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  22:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    $36967, %eax            #  23:     mul    t8 <- 36967, t7
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  24:     add    t9 <- t8, 18901
    movl    $18901, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -116(%ebp), %eax        #  29:     mul    t12 <- t9, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t13 <- t12, 21115
    movl    $21115, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  32:     &()    t14 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  34:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  35:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t17 <- t16, 69880
    movl    $69880, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  38:     &()    t18 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  39:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  40:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  41:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  42:     add    t21 <- t20, 5702
    movl    $5702, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  43:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v1, %eax                #  44:     &()    t23 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  45:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  46:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  47:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -100(%ebp), %eax        #  48:     add    t26 <- t5, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -94(%ebp), %eax         #  49:     assign @t26 <- t4
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_test_3_while_cond     #  50:     goto   3_while_cond
l_test_2:

l_test_exit:
    # epilogue
    addl    $104, %esp              # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <array 9 of <array 4 of <array 5 of <array 2 of <array 9 of <bool>>>>>>
    .long    5
    .long    9
    .long    4
    .long    5
    .long    2
    .long    9
    .skip 3240
v1:                                 # <array 8 of <array 8 of <array 3 of <array 9 of <array 6 of <bool>>>>>>
    .long    5
    .long    8
    .long    8
    .long    3
    .long    9
    .long    6
    .skip 10368
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
