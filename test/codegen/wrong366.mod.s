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
    #    -16(%ebp)   4  [ $t35      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t36      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t37      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t38      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t39      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t40      <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 5 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 5 of <array 9 of <array 1 of <array 3 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $89229, %eax            #   2:     mul    t35 <- 89229, 28110
    movl    $28110, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t36 <- t35, 11729
    movl    $11729, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t37 <- t36, 70178
    movl    $70178, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t38 <- t37, 51586
    movl    $51586, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t39 <- t38, 90690
    movl    $90690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $58285, %eax            #   7:     if     58285 = t39 goto 3_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
l_f0_6_while_cond:
    call    dummyBOOLfunc           #  13:     call   t40 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  14:     if     t40 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_5                  #  15:     goto   5
l_f0_9:
    jmp     l_f0_5                  #  17:     goto   5
    jmp     l_f0_6_while_cond       #  18:     goto   6_while_cond
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t35      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t36      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t37      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t38      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t39      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t40      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t41      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t42      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t43      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t44      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t45      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t46      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t47      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t48      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t49      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t50      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t51      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t52      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t53      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t54      <char> %ebp-89 ]
    #    -90(%ebp)   1  [ $t55      <bool> %ebp-90 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 3 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 9 of <array 8 of <array 8 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -91(%ebp)   1  [ $v3       <bool> %ebp-91 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 <= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t35 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t35 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movl    $99552, %eax            #   8:     add    t36 <- 99552, 48122
    movl    $48122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t37 <- t36, 26643
    movl    $26643, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t39 <- t37, t38
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t40 <- t39, 3932
    movl    $3932, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  18:     mul    t42 <- t40, t41
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     add    t43 <- t42, 9254
    movl    $9254, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  23:     mul    t45 <- t43, t44
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     add    t46 <- t45, 12513
    movl    $12513, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t47 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  28:     mul    t48 <- t46, t47
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  29:     add    t49 <- t48, 94195
    movl    $94195, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  30:     mul    t50 <- t49, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t51 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  33:     add    t52 <- t50, t51
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t53 <- v1, t52
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -13(%ebp), %eax         #  35:     assign @t53 <- t35
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  36:     call   t54 <- dummyCHARfunc
    movb    %al, -89(%ebp)         
    movl    $100, %eax              #  37:     if     100 <= 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_8                  #  38:     goto   8
l_f1_7:
    movl    $1, %eax                #  40:     assign t55 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f1_9                  #  41:     goto   9
l_f1_8:
    movl    $0, %eax                #  43:     assign t55 <- 0
    movb    %al, -90(%ebp)         
l_f1_9:
    movzbl  -90(%ebp), %eax         #  45:     assign v3 <- t55
    movb    %al, -91(%ebp)         

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t35      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t36      <ptr(4) to <array 9 of <array 9 of <array 8 of <array 8 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t37      <ptr(4) to <array 4 of <array 7 of <array 8 of <array 3 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t38      <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 6 of <array 3 of <array 2 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -4084(%ebp)  4056  [ $v4       <array 4 of <array 7 of <array 8 of <array 3 of <array 6 of <bool>>>>>> %ebp-4084 ]
    #   -190732(%ebp)  186648  [ $v5       <array 9 of <array 9 of <array 8 of <array 8 of <array 9 of <int>>>>>> %ebp-190732 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $190720, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $47680, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4084(%ebp)          # local array 'v4': 5 dimensions
    movl    $4,-4080(%ebp)          #   dimension 1: 4 elements
    movl    $7,-4076(%ebp)          #   dimension 2: 7 elements
    movl    $8,-4072(%ebp)          #   dimension 3: 8 elements
    movl    $3,-4068(%ebp)          #   dimension 4: 3 elements
    movl    $6,-4064(%ebp)          #   dimension 5: 6 elements
    movl    $5,-190732(%ebp)        # local array 'v5': 5 dimensions
    movl    $9,-190728(%ebp)        #   dimension 1: 9 elements
    movl    $9,-190724(%ebp)        #   dimension 2: 9 elements
    movl    $8,-190720(%ebp)        #   dimension 3: 8 elements
    movl    $8,-190716(%ebp)        #   dimension 4: 8 elements
    movl    $9,-190712(%ebp)        #   dimension 5: 9 elements

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t35 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    -190732(%ebp), %eax     #   2:     &()    t36 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t36
    pushl   %eax                   
    leal    -4084(%ebp), %eax       #   4:     &()    t37 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t37
    pushl   %eax                   
    call    f1                      #   6:     call   t38 <- f1
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $190720, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t31      <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <int> %ebp-128 ]
    #   -129(%ebp)   1  [ $t4       <bool> %ebp-129 ]
    #   -130(%ebp)   1  [ $t5       <bool> %ebp-130 ]
    #   -136(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 6 of <array 3 of <array 2 of <array 1 of <bool>>>>>>> %ebp-140 ]
    #   -141(%ebp)   1  [ $t8       <char> %ebp-141 ]
    #   -148(%ebp)   4  [ $t9       <ptr(4) to <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-148 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $24366, %eax            #   0:     div    t0 <- 24366, 32676
    movl    $32676, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 46713
    movl    $46713, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 54999
    movl    $54999, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   3:     add    t3 <- t2, 81471
    movl    $81471, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $58480, %eax            #   4:     if     58480 < t3 goto 1
    movl    -108(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   5:     goto   2
l_test_1:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -129(%ebp)        
    jmp     l_test_3                #   8:     goto   3
l_test_2:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -129(%ebp)        
l_test_3:
    movzbl  -129(%ebp), %eax        #  12:     assign v0 <- t4
    movb    %al, v0                
    movl    $98, %eax               #  13:     if     98 # 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_6               
    jmp     l_test_7                #  14:     goto   7
l_test_6:
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -130(%ebp)        
    jmp     l_test_8                #  17:     goto   8
l_test_7:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -130(%ebp)        
l_test_8:
    movzbl  -130(%ebp), %eax        #  21:     param  2 <- t5
    pushl   %eax                   
    leal    v3, %eax                #  22:     &()    t6 <- v3
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  23:     param  1 <- t6
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t7 <- v2
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  25:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  26:     call   t8 <- f2
    addl    $12, %esp              
    movb    %al, -141(%ebp)        
    movzbl  -141(%ebp), %eax        #  27:     assign v1 <- t8
    movb    %al, v1                
    leal    v3, %eax                #  28:     &()    t9 <- v3
    movl    %eax, -148(%ebp)       
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    leal    v3, %eax                #  30:     &()    t10 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  32:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $1031, %eax             #  33:     mul    t12 <- 1031, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t13 <- t12, 23350
    movl    $23350, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    leal    v3, %eax                #  36:     &()    t14 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  38:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  39:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     add    t17 <- t16, 12725
    movl    $12725, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  41:     param  1 <- 4
    pushl   %eax                   
    leal    v3, %eax                #  42:     &()    t18 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  43:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  44:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  45:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  46:     add    t21 <- t20, 79576
    movl    $79576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    leal    v3, %eax                #  48:     &()    t22 <- v3
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  50:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  51:     mul    t24 <- t21, t23
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  52:     add    t25 <- t24, 55617
    movl    $55617, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  53:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    v3, %eax                #  54:     &()    t27 <- v3
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  55:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  56:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  57:     add    t29 <- t26, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -148(%ebp), %eax        #  58:     add    t30 <- t9, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $1, %eax                #  59:     assign @t30 <- 1
    movl    -112(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $1, %eax                #  60:     assign v0 <- 1
    movb    %al, v0                
l_test_16_while_cond:
    movl    $51455, %eax            #  62:     if     51455 < 43589 goto 17_while_body
    movl    $43589, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_17_while_body   
    jmp     l_test_15               #  63:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  65:     goto   16_while_cond
l_test_15:
    movl    $77787, %eax            #  67:     assign v4 <- 77787
    movl    %eax, v4               
    jmp     l_test_exit            
    call    WriteLn                 #  69:     call   WriteLn
    call    dummyBOOLfunc           #  70:     call   t31 <- dummyBOOLfunc
    movb    %al, -113(%ebp)        
    jmp     l_test_10               #  71:     goto   10
l_test_10:
    movl    $928, %eax              #  73:     sub    t32 <- 928, 77258
    movl    $77258, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  74:     sub    t33 <- t32, 91544
    movl    $91544, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  75:     add    t34 <- t33, 58749
    movl    $58749, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  76:     assign v4 <- t34
    movl    %eax, v4               

l_test_exit:
    # epilogue
    addl    $136, %esp              # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 6 of <array 6 of <array 3 of <array 2 of <array 1 of <bool>>>>>>
    .long    5
    .long    6
    .long    6
    .long    3
    .long    2
    .long    1
    .skip  216
v3:                                 # <array 9 of <array 4 of <array 1 of <array 3 of <array 3 of <bool>>>>>>
    .long    5
    .long    9
    .long    4
    .long    1
    .long    3
    .long    3
    .skip  324
v4:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
