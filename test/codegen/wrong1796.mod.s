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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 49 of <array 65 of <array 34 of <array 83 of <array 35 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 12 of <array 10 of <array 21 of <array 95 of <array 3 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

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
    movl    $47294, %eax            #   0:     mul    t9 <- 47294, 92128
    movl    $92128, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t10 <- t9, 52356
    movl    $52356, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v1 <- t10
    movl    %eax, -28(%ebp)        
    jmp     l_f1_6                  #   3:     goto   6
    jmp     l_f1_6                  #   4:     goto   6
l_f1_6:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
    movl    $0, %eax                #   8:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  10:     if     t11 # 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #  11:     goto   3
l_f1_2:
    movl    $1, %eax                #  13:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_4                  #  14:     goto   4
l_f1_3:
    movl    $0, %eax                #  16:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f1_4:
    movzbl  -18(%ebp), %eax         #  18:     return t12
    jmp     l_f1_exit              
    jmp     l_f1_15_if_false        #  19:     goto   15_if_false
    jmp     l_f1_16                 #  20:     goto   16
l_f1_16:
    movl    $97, %eax               #  22:     assign v2 <- 97
    movb    %al, -29(%ebp)         
    jmp     l_f1_13                 #  23:     goto   13
l_f1_15_if_false:
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 49 of <array 65 of <array 34 of <array 83 of <array 35 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <ptr(4) to <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <ptr(4) to <array 12 of <array 10 of <array 21 of <array 95 of <array 3 of <int>>>>>>> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 48 of <array 34 of <array 60 of <array 94 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 80 of <array 66 of <array 67 of <array 93 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #   -3378812(%ebp)  3378696  [ $v4       <array 79 of <array 9 of <array 4 of <array 54 of <array 22 of <char>>>>>> %ebp-3378812 ]
    #   -317961288(%ebp)  314582474  [ $v5       <array 49 of <array 65 of <array 34 of <array 83 of <array 35 of <bool>>>>>> %ebp-317961288 ]
    #   -320834112(%ebp)  2872824  [ $v6       <array 12 of <array 10 of <array 21 of <array 95 of <array 3 of <int>>>>>> %ebp-320834112 ]
    #   -320834113(%ebp)   1  [ $v7       <char> %ebp-320834113 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $320834104, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $80208526, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3378812(%ebp)       # local array 'v4': 5 dimensions
    movl    $79,-3378808(%ebp)      #   dimension 1: 79 elements
    movl    $9,-3378804(%ebp)       #   dimension 2: 9 elements
    movl    $4,-3378800(%ebp)       #   dimension 3: 4 elements
    movl    $54,-3378796(%ebp)      #   dimension 4: 54 elements
    movl    $22,-3378792(%ebp)      #   dimension 5: 22 elements
    movl    $5,-317961288(%ebp)     # local array 'v5': 5 dimensions
    movl    $49,-317961284(%ebp)    #   dimension 1: 49 elements
    movl    $65,-317961280(%ebp)    #   dimension 2: 65 elements
    movl    $34,-317961276(%ebp)    #   dimension 3: 34 elements
    movl    $83,-317961272(%ebp)    #   dimension 4: 83 elements
    movl    $35,-317961268(%ebp)    #   dimension 5: 35 elements
    movl    $5,-320834112(%ebp)     # local array 'v6': 5 dimensions
    movl    $12,-320834108(%ebp)    #   dimension 1: 12 elements
    movl    $10,-320834104(%ebp)    #   dimension 2: 10 elements
    movl    $21,-320834100(%ebp)    #   dimension 3: 21 elements
    movl    $95,-320834096(%ebp)    #   dimension 4: 95 elements
    movl    $3,-320834092(%ebp)     #   dimension 5: 3 elements

    # function body
    movl    $12886, %eax            #   0:     if     12886 # 29352 goto 1_if_true
    movl    $29352, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    leal    -320834112(%ebp), %eax  #   3:     &()    t9 <- v6
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   4:     param  2 <- t9
    pushl   %eax                   
    leal    -317961288(%ebp), %eax  #   5:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  1 <- t10
    pushl   %eax                   
    leal    -3378812(%ebp), %eax    #   7:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #   9:     call   f0
    addl    $12, %esp              
    movl    $36563, %eax            #  10:     return 36563
    jmp     l_f2_exit              
    leal    -3378812(%ebp), %eax    #  11:     &()    t12 <- v4
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    leal    -3378812(%ebp), %eax    #  13:     &()    t13 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $47167, %eax            #  16:     mul    t15 <- 47167, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t16 <- t15, 63375
    movl    $63375, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    leal    -3378812(%ebp), %eax    #  19:     &()    t17 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  21:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t20 <- t19, 29216
    movl    $29216, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    leal    -3378812(%ebp), %eax    #  25:     &()    t21 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  26:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  27:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  28:     mul    t23 <- t20, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  29:     add    t24 <- t23, 26121
    movl    $26121, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    leal    -3378812(%ebp), %eax    #  31:     &()    t25 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  32:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  33:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  34:     mul    t27 <- t24, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  35:     add    t28 <- t27, 76137
    movl    $76137, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  36:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    -3378812(%ebp), %eax    #  37:     &()    t30 <- v4
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  38:     param  0 <- t30
    pushl   %eax                   
    call    DOFS                    #  39:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  40:     add    t32 <- t29, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -24(%ebp), %eax         #  41:     add    t33 <- t12, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $98, %eax               #  42:     assign @t33 <- 98
    movl    -108(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  43:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_8_while_cond:
    jmp     l_f2_9_while_body       #  47:     goto   9_while_body
    jmp     l_f2_9_while_body       #  48:     goto   9_while_body
    jmp     l_f2_9_while_body       #  49:     goto   9_while_body
l_f2_9_while_body:
    movl    $78216, %eax            #  51:     return 78216
    jmp     l_f2_exit              
    jmp     l_f2_8_while_cond       #  52:     goto   8_while_cond
    movl    $67155, %eax            #  53:     div    t34 <- 67155, 9995
    movl    $9995, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  54:     if     t34 >= 99226 goto 15_if_true
    movl    $99226, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  55:     goto   16_if_false
l_f2_15_if_true:
    movl    $99, %eax               #  57:     assign v7 <- 99
    movb    %al, -320834113(%ebp)  
l_f2_20_while_cond:
    movl    $44548, %eax            #  59:     if     44548 = 8621 goto 21_while_body
    movl    $8621, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_21_while_body     
    jmp     l_f2_19                 #  60:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  62:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_14                 #  64:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $320834104, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $100, %eax              #   2:     assign v0 <- 100
    movb    %al, v0                
    call    WriteLn                 #   3:     call   WriteLn
    movl    $56443, %eax            #   4:     add    t1 <- 56443, 52912
    movl    $52912, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t2 <- t1, 22775
    movl    $22775, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t3 <- t2, 34919
    movl    $34919, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t4 <- t3, 14822
    movl    $14822, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     sub    t5 <- t4, 65631
    movl    $65631, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     sub    t6 <- t5, 84788
    movl    $84788, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     sub    t7 <- t6, 63165
    movl    $63165, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  13:     call   t8 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  14:     if     t8 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #  15:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_7                #  17:     goto   7
l_test_7:
    jmp     l_test_4                #  19:     goto   4
l_test_6_if_false:
l_test_4:
l_test_11_while_cond:
    jmp     l_test_10               #  23:     goto   10
    jmp     l_test_10               #  24:     goto   10
    jmp     l_test_14               #  25:     goto   14
l_test_14:
    jmp     l_test_11_while_cond    #  27:     goto   11_while_cond
l_test_10:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
