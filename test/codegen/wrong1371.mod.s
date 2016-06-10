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
    #    -16(%ebp)   4  [ $t32      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t33      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t34      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t35      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t36      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t37      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t38      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t39      <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 99 of <array 79 of <array 67 of <array 42 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 40 of <array 56 of <array 86 of <array 27 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $88016, %eax            #   0:     div    t32 <- 88016, 78568
    movl    $78568, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t33 <- t32, 60442
    movl    $60442, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t34 <- t33, 6459
    movl    $6459, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t34
    jmp     l_f0_exit              
    movl    $92026, %eax            #   4:     div    t35 <- 92026, 60871
    movl    $60871, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     div    t36 <- t35, 11729
    movl    $11729, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t36
    jmp     l_f0_exit              
    movl    $47465, %eax            #   7:     sub    t37 <- 47465, 39509
    movl    $39509, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    call    ReadInt                 #   8:     call   t38 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #   9:     sub    t39 <- t37, t38
    movl    -40(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     return t39
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t32      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t33      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t34      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 60 of <array 62 of <array 99 of <array 53 of <array 14 of <char>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
    movl    $1, %eax                #   0:     assign t32 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t32 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v3 <- t32
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #   5:     call   t33 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_7_while_cond:
    call    dummyCHARfunc           #   7:     call   t34 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   8:     if     t34 >= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t32      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t33      <ptr(4) to <array 60 of <array 62 of <array 99 of <array 53 of <array 14 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t34      <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t35      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t36      <ptr(4) to <array 7 of <array 40 of <array 56 of <array 86 of <array 27 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t37      <ptr(4) to <array 46 of <array 99 of <array 79 of <array 67 of <array 42 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t38      <ptr(4) to <array 60 of <array 62 of <array 99 of <array 53 of <array 14 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t39      <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t40      <char> %ebp-45 ]
    #    -46(%ebp)   1  [ $t41      <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t42      <int> %ebp-52 ]
    #   -1087320076(%ebp)  1087320024  [ $v0       <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>> %ebp-1087320076 ]
    #   -1360583860(%ebp)  273263784  [ $v1       <array 60 of <array 62 of <array 99 of <array 53 of <array 14 of <char>>>>>> %ebp-1360583860 ]
    #   1922001888(%ebp)  1012381548  [ $v2       <array 46 of <array 99 of <array 79 of <array 67 of <array 42 of <char>>>>>> %ebp+1922001888 ]
    #   1776366024(%ebp)  145635864  [ $v3       <array 7 of <array 40 of <array 56 of <array 86 of <array 27 of <int>>>>>> %ebp+1776366024 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1776366036, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $629650315, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1087320076(%ebp)    # local array 'v0': 5 dimensions
    movl    $30,-1087320072(%ebp)   #   dimension 1: 30 elements
    movl    $65,-1087320068(%ebp)   #   dimension 2: 65 elements
    movl    $82,-1087320064(%ebp)   #   dimension 3: 82 elements
    movl    $80,-1087320060(%ebp)   #   dimension 4: 80 elements
    movl    $85,-1087320056(%ebp)   #   dimension 5: 85 elements
    movl    $5,-1360583860(%ebp)    # local array 'v1': 5 dimensions
    movl    $60,-1360583856(%ebp)   #   dimension 1: 60 elements
    movl    $62,-1360583852(%ebp)   #   dimension 2: 62 elements
    movl    $99,-1360583848(%ebp)   #   dimension 3: 99 elements
    movl    $53,-1360583844(%ebp)   #   dimension 4: 53 elements
    movl    $14,-1360583840(%ebp)   #   dimension 5: 14 elements
    movl    $5,1922001888(%ebp)     # local array 'v2': 5 dimensions
    movl    $46,1922001892(%ebp)    #   dimension 1: 46 elements
    movl    $99,1922001896(%ebp)    #   dimension 2: 99 elements
    movl    $79,1922001900(%ebp)    #   dimension 3: 79 elements
    movl    $67,1922001904(%ebp)    #   dimension 4: 67 elements
    movl    $42,1922001908(%ebp)    #   dimension 5: 42 elements
    movl    $5,1776366024(%ebp)     # local array 'v3': 5 dimensions
    movl    $7,1776366028(%ebp)     #   dimension 1: 7 elements
    movl    $40,1776366032(%ebp)    #   dimension 2: 40 elements
    movl    $56,1776366036(%ebp)    #   dimension 3: 56 elements
    movl    $86,1776366040(%ebp)    #   dimension 4: 86 elements
    movl    $27,1776366044(%ebp)    #   dimension 5: 27 elements

    # function body
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t32 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t32 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t32
    jmp     l_f2_exit              
    leal    -1360583860(%ebp), %eax #   9:     &()    t33 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t33
    pushl   %eax                   
    movl    $81634, %eax            #  11:     param  1 <- 81634
    pushl   %eax                   
    leal    -1087320076(%ebp), %eax #  12:     &()    t34 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t34
    pushl   %eax                   
    call    f1                      #  14:     call   t35 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    leal    1776366024(%ebp), %eax  #  15:     &()    t36 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     param  3 <- t36
    pushl   %eax                   
    leal    1922001888(%ebp), %eax  #  17:     &()    t37 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     param  2 <- t37
    pushl   %eax                   
    leal    -1360583860(%ebp), %eax #  19:     &()    t38 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     param  2 <- t38
    pushl   %eax                   
    movl    $83150, %eax            #  21:     param  1 <- 83150
    pushl   %eax                   
    leal    -1087320076(%ebp), %eax #  22:     &()    t39 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     param  0 <- t39
    pushl   %eax                   
    call    f1                      #  24:     call   t40 <- f1
    addl    $12, %esp              
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  25:     if     t40 <= 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_8                 
    jmp     l_f2_9                  #  26:     goto   9
l_f2_8:
    movl    $1, %eax                #  28:     assign t41 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f2_10                 #  29:     goto   10
l_f2_9:
    movl    $0, %eax                #  31:     assign t41 <- 0
    movb    %al, -46(%ebp)         
l_f2_10:
    movzbl  -46(%ebp), %eax         #  33:     param  1 <- t41
    pushl   %eax                   
    movl    $1, %eax                #  34:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  35:     call   t42 <- f0
    addl    $16, %esp              
    movl    %eax, -52(%ebp)        

l_f2_exit:
    # epilogue
    addl    $-1776366036, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 60 of <array 62 of <array 99 of <array 53 of <array 14 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <char> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t4       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t5       <ptr(4) to <array 60 of <array 62 of <array 99 of <array 53 of <array 14 of <char>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t6       <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-128 ]
    #   -129(%ebp)   1  [ $t7       <char> %ebp-129 ]
    #   -136(%ebp)   4  [ $t8       <ptr(4) to <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>> %ebp-136 ]
    #   -140(%ebp)   4  [ $t9       <int> %ebp-140 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $128, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $32, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t2 <- v0
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   6:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -105(%ebp)        
    call    dummyINTfunc            #   7:     call   t4 <- dummyINTfunc
    movl    %eax, -120(%ebp)       
    leal    v1, %eax                #   8:     &()    t5 <- v1
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #   9:     param  2 <- t5
    pushl   %eax                   
    movl    $28354, %eax            #  10:     param  1 <- 28354
    pushl   %eax                   
    leal    v0, %eax                #  11:     &()    t6 <- v0
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  12:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  13:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -129(%ebp)        
    leal    v0, %eax                #  14:     &()    t8 <- v0
    movl    %eax, -136(%ebp)       
    movl    $85291, %eax            #  15:     mul    t9 <- 85291, 28366
    movl    $28366, %ebx           
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  16:     mul    t10 <- t9, 42029
    movl    $42029, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  18:     &()    t11 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t14 <- t13, 62379
    movl    $62379, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  24:     &()    t15 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  26:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  27:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t18 <- t17, 59649
    movl    $59649, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  30:     &()    t19 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  32:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  33:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  34:     add    t22 <- t21, 13054
    movl    $13054, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  36:     &()    t23 <- v0
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  37:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  38:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  39:     mul    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  40:     add    t26 <- t25, 46026
    movl    $46026, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  41:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    v0, %eax                #  42:     &()    t28 <- v0
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  43:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  44:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  45:     add    t30 <- t27, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -136(%ebp), %eax        #  46:     add    t31 <- t8, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movzbl  -129(%ebp), %eax        #  47:     assign @t31 <- t7
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $128, %esp              # remove locals
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
v0:                                 # <array 30 of <array 65 of <array 82 of <array 80 of <array 85 of <char>>>>>>
    .long    5
    .long   30
    .long   65
    .long   82
    .long   80
    .long   85
    .skip 1087320000
v1:                                 # <array 60 of <array 62 of <array 99 of <array 53 of <array 14 of <char>>>>>>
    .long    5
    .long   60
    .long   62
    .long   99
    .long   53
    .long   14
    .skip 273263760
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
