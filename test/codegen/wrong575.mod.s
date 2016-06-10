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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $100, %eax              #   0:     if     100 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    jmp     l_f0_7_if_false         #   9:     goto   7_if_false
    movl    $1, %eax                #  10:     return 1
    jmp     l_f0_exit              
    movl    $97, %eax               #  11:     if     97 < 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_10                
    jmp     l_f0_11                 #  12:     goto   11
l_f0_10:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #  15:     goto   12
l_f0_11:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_12:
    movzbl  -14(%ebp), %eax         #  19:     return t3
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_15                 #  21:     goto   15
l_f0_15:
    jmp     l_f0_5                  #  23:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_19_while_cond:
    movl    $98, %eax               #  27:     if     98 >= 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_20_while_body     
    jmp     l_f0_18                 #  28:     goto   18
l_f0_20_while_body:
l_f0_23_while_cond:
    jmp     l_f0_22                 #  31:     goto   22
    jmp     l_f0_23_while_cond      #  32:     goto   23_while_cond
l_f0_22:
l_f0_26_while_cond:
    jmp     l_f0_25                 #  35:     goto   25
    jmp     l_f0_26_while_cond      #  36:     goto   26_while_cond
l_f0_25:
    call    dummyProcedure          #  38:     call   dummyProcedure
l_f0_30_while_cond:
    jmp     l_f0_29                 #  40:     goto   29
    jmp     l_f0_30_while_cond      #  41:     goto   30_while_cond
l_f0_29:
    movl    $1, %eax                #  43:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f0_19_while_cond      #  44:     goto   19_while_cond
l_f0_18:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 6 of <array 4 of <array 7 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t2
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   9:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 6 of <array 4 of <array 7 of <array 5 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $t30      <bool> %ebp-98 ]
    #    -99(%ebp)   1  [ $t4       <bool> %ebp-99 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t6       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 7 of <array 7 of <array 4 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 5 of <array 9 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -984(%ebp)  864  [ $v4       <array 1 of <array 6 of <array 4 of <array 7 of <array 5 of <char>>>>>> %ebp-984 ]
    #   -5420(%ebp)  4434  [ $v5       <array 10 of <array 9 of <array 1 of <array 7 of <array 7 of <char>>>>>> %ebp-5420 ]
    #   -5421(%ebp)   1  [ $v6       <bool> %ebp-5421 ]
    #   -5422(%ebp)   1  [ $v7       <char> %ebp-5422 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5412, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1353, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-984(%ebp)           # local array 'v4': 5 dimensions
    movl    $1,-980(%ebp)           #   dimension 1: 1 elements
    movl    $6,-976(%ebp)           #   dimension 2: 6 elements
    movl    $4,-972(%ebp)           #   dimension 3: 4 elements
    movl    $7,-968(%ebp)           #   dimension 4: 7 elements
    movl    $5,-964(%ebp)           #   dimension 5: 5 elements
    movl    $5,-5420(%ebp)          # local array 'v5': 5 dimensions
    movl    $10,-5416(%ebp)         #   dimension 1: 10 elements
    movl    $9,-5412(%ebp)          #   dimension 2: 9 elements
    movl    $1,-5408(%ebp)          #   dimension 3: 1 elements
    movl    $7,-5404(%ebp)          #   dimension 4: 7 elements
    movl    $7,-5400(%ebp)          #   dimension 5: 7 elements

    # function body
l_f2_1_while_cond:
    movl    $42336, %eax            #   1:     param  3 <- 42336
    pushl   %eax                   
    movl    $98, %eax               #   2:     param  2 <- 98
    pushl   %eax                   
    leal    -984(%ebp), %eax        #   3:     &()    t2 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   4:     param  1 <- t2
    pushl   %eax                   
    movl    $482, %eax              #   5:     param  0 <- 482
    pushl   %eax                   
    call    f1                      #   6:     call   t3 <- f1
    addl    $16, %esp              
    movb    %al, -97(%ebp)         
    movzbl  -97(%ebp), %eax         #   7:     if     t3 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7:
    jmp     l_f2_5                  #  10:     goto   5
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -99(%ebp)         
    jmp     l_f2_6                  #  12:     goto   6
l_f2_5:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -99(%ebp)         
l_f2_6:
    movzbl  -99(%ebp), %eax         #  16:     if     t4 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  19:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_10_if_false        #  21:     goto   10_if_false
    movl    $1, %eax                #  22:     param  1 <- 1
    pushl   %eax                   
    leal    -5420(%ebp), %eax       #  23:     &()    t5 <- v5
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  24:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  25:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -105(%ebp)        
    movl    $0, %eax                #  26:     assign v6 <- 0
    movb    %al, -5421(%ebp)       
    leal    -5420(%ebp), %eax       #  27:     &()    t7 <- v5
    movl    %eax, -112(%ebp)       
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    leal    -5420(%ebp), %eax       #  29:     &()    t8 <- v5
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  30:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  31:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    $69081, %eax            #  32:     mul    t10 <- 69081, t9
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  33:     add    t11 <- t10, 71845
    movl    $71845, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    leal    -5420(%ebp), %eax       #  35:     &()    t12 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  36:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  37:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  38:     mul    t14 <- t11, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     add    t15 <- t14, 87576
    movl    $87576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    leal    -5420(%ebp), %eax       #  41:     &()    t16 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  42:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  43:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  44:     mul    t18 <- t15, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     add    t19 <- t18, 10763
    movl    $10763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  46:     param  1 <- 5
    pushl   %eax                   
    leal    -5420(%ebp), %eax       #  47:     &()    t20 <- v5
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  48:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  49:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -52(%ebp), %eax         #  50:     mul    t22 <- t19, t21
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  51:     add    t23 <- t22, 32954
    movl    $32954, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  52:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    -5420(%ebp), %eax       #  53:     &()    t25 <- v5
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  54:     param  0 <- t25
    pushl   %eax                   
    call    DOFS                    #  55:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  56:     add    t27 <- t24, t26
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -112(%ebp), %eax        #  57:     add    t28 <- t7, t27
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $99, %eax               #  58:     assign @t28 <- 99
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $0, %eax                #  59:     param  1 <- 0
    pushl   %eax                   
    leal    -5420(%ebp), %eax       #  60:     &()    t29 <- v5
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  61:     param  0 <- t29
    pushl   %eax                   
    call    f0                      #  62:     call   t30 <- f0
    addl    $8, %esp               
    movb    %al, -98(%ebp)         
    movl    $97, %eax               #  63:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_8                  #  64:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $100, %eax              #  67:     return 100
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $5412, %esp             # remove locals
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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $97, %eax               #   7:     assign v0 <- 97
    movb    %al, v0                
l_test_8_while_cond:
    movl    $97441, %eax            #   9:     mul    t0 <- 97441, 60219
    movl    $60219, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     mul    t1 <- t0, 83581
    movl    $83581, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $89821, %eax            #  11:     if     89821 <= t1 goto 9_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_9_while_body    
    jmp     l_test_7                #  12:     goto   7
l_test_9_while_body:
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_8_while_cond     #  16:     goto   8_while_cond
l_test_7:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
