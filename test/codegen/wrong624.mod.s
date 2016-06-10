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
    #    -16(%ebp)   4  [ $t29      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t30      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t31      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t32      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t33      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t34      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 8 of <array 4 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 5 of <array 4 of <array 2 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 6 of <array 4 of <array 4 of <array 4 of <bool>>>>>>> %ebp+20 ]
    #    -37(%ebp)   1  [ $v5       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $88656, %eax            #   0:     add    t29 <- 88656, 71472
    movl    $71472, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t30 <- t29, 49476
    movl    $49476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t31 <- t30, 37190
    movl    $37190, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t31
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $85214, %eax            #   5:     add    t32 <- 85214, 64213
    movl    $64213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t33 <- t32, 97563
    movl    $97563, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     add    t34 <- t33, 74839
    movl    $74839, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $81017, %eax            #   8:     if     81017 > t34 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  11:     goto   2_while_cond
l_f0_1:
    movl    $1, %eax                #  13:     assign v5 <- 1
    movb    %al, -37(%ebp)         

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t29      <ptr(4) to <array 10 of <array 6 of <array 4 of <array 4 of <array 4 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t30      <ptr(4) to <array 4 of <array 5 of <array 4 of <array 2 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t31      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t32      <ptr(4) to <array 4 of <array 8 of <array 4 of <array 8 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t33      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t34      <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t35      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t36      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t37      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t38      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t39      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t40      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t41      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t42      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t43      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t44      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t45      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t46      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t47      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t48      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t49      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t50      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t51      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t52      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t53      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t54      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t55      <int> %ebp-120 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp+20 ]
    #   -32912(%ebp)  32792  [ $v5       <array 4 of <array 8 of <array 4 of <array 8 of <array 8 of <int>>>>>> %ebp-32912 ]
    #   -34056(%ebp)  1144  [ $v6       <array 4 of <array 5 of <array 4 of <array 2 of <array 7 of <bool>>>>>> %ebp-34056 ]
    #   -37920(%ebp)  3864  [ $v7       <array 10 of <array 6 of <array 4 of <array 4 of <array 4 of <bool>>>>>> %ebp-37920 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $37908, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9477, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-32912(%ebp)         # local array 'v5': 5 dimensions
    movl    $4,-32908(%ebp)         #   dimension 1: 4 elements
    movl    $8,-32904(%ebp)         #   dimension 2: 8 elements
    movl    $4,-32900(%ebp)         #   dimension 3: 4 elements
    movl    $8,-32896(%ebp)         #   dimension 4: 8 elements
    movl    $8,-32892(%ebp)         #   dimension 5: 8 elements
    movl    $5,-34056(%ebp)         # local array 'v6': 5 dimensions
    movl    $4,-34052(%ebp)         #   dimension 1: 4 elements
    movl    $5,-34048(%ebp)         #   dimension 2: 5 elements
    movl    $4,-34044(%ebp)         #   dimension 3: 4 elements
    movl    $2,-34040(%ebp)         #   dimension 4: 2 elements
    movl    $7,-34036(%ebp)         #   dimension 5: 7 elements
    movl    $5,-37920(%ebp)         # local array 'v7': 5 dimensions
    movl    $10,-37916(%ebp)        #   dimension 1: 10 elements
    movl    $6,-37912(%ebp)         #   dimension 2: 6 elements
    movl    $4,-37908(%ebp)         #   dimension 3: 4 elements
    movl    $4,-37904(%ebp)         #   dimension 4: 4 elements
    movl    $4,-37900(%ebp)         #   dimension 5: 4 elements

    # function body
    leal    -37920(%ebp), %eax      #   0:     &()    t29 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t29
    pushl   %eax                   
    leal    -34056(%ebp), %eax      #   2:     &()    t30 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t30
    pushl   %eax                   
    movl    $73797, %eax            #   4:     sub    t31 <- 73797, 85734
    movl    $85734, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  1 <- t31
    pushl   %eax                   
    leal    -32912(%ebp), %eax      #   6:     &()    t32 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t32
    pushl   %eax                   
    call    f0                      #   8:     call   t33 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   9:     call   t34 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  10:     param  0 <- t34
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #  12:     call   t35 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     mul    t36 <- t35, 28882
    movl    $28882, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     div    t37 <- t36, 40140
    movl    $40140, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  15:     mul    t38 <- t37, 96933
    movl    $96933, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  16:     div    t39 <- t38, 7407
    movl    $7407, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  19:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $97776, %eax            #  20:     mul    t41 <- 97776, t40
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  21:     add    t42 <- t41, 36318
    movl    $36318, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  24:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  25:     mul    t44 <- t42, t43
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  26:     add    t45 <- t44, 21087
    movl    $21087, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  29:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  30:     mul    t47 <- t45, t46
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  31:     add    t48 <- t47, 16693
    movl    $16693, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  33:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  34:     call   t49 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  35:     mul    t50 <- t48, t49
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  36:     add    t51 <- t50, 26606
    movl    $26606, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  37:     mul    t52 <- t51, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    20(%ebp), %eax          #  38:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  39:     call   t53 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  40:     add    t54 <- t52, t53
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    20(%ebp), %eax          #  41:     add    t55 <- v4, t54
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -56(%ebp), %eax         #  42:     assign @t55 <- t39
    movl    -120(%ebp), %edi       
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $37908, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t29      <bool> %ebp-13 ]

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
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #   8:     call   t29 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t4       <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t5       <bool> %ebp-109 ]
    #   -110(%ebp)   1  [ $t6       <char> %ebp-110 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <ptr(4) to <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $112, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $99, %eax               #   2:     if     99 = 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
    movl    $1, %eax                #   7:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    leal    v1, %eax                #  11:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  3 <- t0
    pushl   %eax                   
    movl    $99, %eax               #  13:     param  2 <- 99
    pushl   %eax                   
    call    dummyINTfunc            #  14:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t2 <- t1, 44074
    movl    $44074, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  16:     add    t3 <- t2, 14887
    movl    $14887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  17:     add    t4 <- t3, 37177
    movl    $37177, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  18:     param  1 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  19:     if     99 > 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11              
    jmp     l_test_12               #  20:     goto   12
l_test_11:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -109(%ebp)        
    jmp     l_test_13               #  23:     goto   13
l_test_12:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -109(%ebp)        
l_test_13:
    movzbl  -109(%ebp), %eax        #  27:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  28:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -110(%ebp)        
l_test_16_while_cond:
    jmp     l_test_exit            
    jmp     l_test_16_while_cond    #  31:     goto   16_while_cond
    movl    $97, %eax               #  32:     if     97 >= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_20_if_true      
    jmp     l_test_21_if_false      #  33:     goto   21_if_false
l_test_20_if_true:
    movl    $100, %eax              #  35:     if     100 = 99 goto 24_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_24_if_true      
    jmp     l_test_25_if_false      #  36:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  38:     goto   23
l_test_25_if_false:
l_test_23:
    leal    v1, %eax                #  41:     &()    t7 <- v1
    movl    %eax, -116(%ebp)       
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  43:     &()    t8 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  44:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  45:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    $9918, %eax             #  46:     mul    t10 <- 9918, t9
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  47:     add    t11 <- t10, 84872
    movl    $84872, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  49:     &()    t12 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  50:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  51:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  52:     mul    t14 <- t11, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  53:     add    t15 <- t14, 38105
    movl    $38105, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  54:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  55:     &()    t16 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  56:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  57:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  58:     mul    t18 <- t15, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  59:     add    t19 <- t18, 63099
    movl    $63099, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  60:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  61:     &()    t20 <- v1
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  62:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  63:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -60(%ebp), %eax         #  64:     mul    t22 <- t19, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  65:     add    t23 <- t22, 40814
    movl    $40814, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  66:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    v1, %eax                #  67:     &()    t25 <- v1
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  68:     param  0 <- t25
    pushl   %eax                   
    call    DOFS                    #  69:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  70:     add    t27 <- t24, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -116(%ebp), %eax        #  71:     add    t28 <- t7, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $70696, %eax            #  72:     assign @t28 <- 70696
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_test_19               #  73:     goto   19
l_test_21_if_false:
l_test_19:

l_test_exit:
    # epilogue
    addl    $112, %esp              # remove locals
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
    .align   4
v1:                                 # <array 8 of <array 1 of <array 7 of <array 7 of <array 5 of <int>>>>>>
    .long    5
    .long    8
    .long    1
    .long    7
    .long    7
    .long    5
    .skip 7840
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
