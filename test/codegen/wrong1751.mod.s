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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t3
    jmp     l_f0_exit              
    call    dummyINTfunc            #  10:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     assign v0 <- t4
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t31      <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t4       <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp-112 ]
    #   -113(%ebp)   1  [ $t5       <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t6       <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t7       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t8       <ptr(4) to <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <int> %ebp-132 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 60 of <array 7 of <array 74 of <array 42 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 36 of <array 41 of <array 19 of <array 85 of <char>>>>>>> %ebp+16 ]
    #   1230687460(%ebp)  -1230687592  [ $v3       <array 56 of <array 15 of <array 94 of <array 98 of <array 99 of <int>>>>>> %ebp+1230687460 ]
    #   1230687456(%ebp)   4  [ $v4       <int> %ebp+1230687456 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1230687468, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-307671867, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1230687460(%ebp)     # local array 'v3': 5 dimensions
    movl    $56,1230687464(%ebp)    #   dimension 1: 56 elements
    movl    $15,1230687468(%ebp)    #   dimension 2: 15 elements
    movl    $94,1230687472(%ebp)    #   dimension 3: 94 elements
    movl    $98,1230687476(%ebp)    #   dimension 4: 98 elements
    movl    $99,1230687480(%ebp)    #   dimension 5: 99 elements

    # function body
l_f1_1_while_cond:
    movl    $20538, %eax            #   1:     div    t2 <- 20538, 25675
    movl    $25675, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     if     t2 <= 86397 goto 2_while_body
    movl    $86397, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $1, %eax                #   5:     return 1
    jmp     l_f1_exit              
    movl    $98, %eax               #   6:     if     98 < 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -97(%ebp)         
l_f1_8:
    movzbl  -97(%ebp), %eax         #  14:     param  2 <- t3
    pushl   %eax                   
    leal    1230687460(%ebp), %eax  #  15:     &()    t4 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  16:     param  1 <- t4
    pushl   %eax                   
    movl    $89480, %eax            #  17:     param  0 <- 89480
    pushl   %eax                   
    call    f0                      #  18:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -113(%ebp)        
    jmp     l_f1_10                 #  19:     goto   10
l_f1_10:
    jmp     l_f1_1_while_cond       #  21:     goto   1_while_cond
l_f1_0:
    leal    1230687460(%ebp), %eax  #  23:     &()    t6 <- v3
    movl    %eax, -120(%ebp)       
    movl    $83248, %eax            #  24:     sub    t7 <- 83248, 88602
    movl    $88602, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    leal    1230687460(%ebp), %eax  #  26:     &()    t8 <- v3
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  27:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  28:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -124(%ebp), %eax        #  29:     mul    t10 <- t7, t9
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $87063, %eax            #  30:     sub    t11 <- 87063, 71359
    movl    $71359, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     add    t12 <- t11, 53526
    movl    $53526, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  32:     add    t13 <- t10, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    leal    1230687460(%ebp), %eax  #  34:     &()    t14 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  36:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  37:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t17 <- t16, 34084
    movl    $34084, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  39:     param  1 <- 4
    pushl   %eax                   
    leal    1230687460(%ebp), %eax  #  40:     &()    t18 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  41:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  42:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  43:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t21 <- t20, 96884
    movl    $96884, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    leal    1230687460(%ebp), %eax  #  46:     &()    t22 <- v3
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  48:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  49:     mul    t24 <- t21, t23
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  50:     add    t25 <- t24, 12869
    movl    $12869, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  51:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    1230687460(%ebp), %eax  #  52:     &()    t27 <- v3
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  53:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  54:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  55:     add    t29 <- t26, t28
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -120(%ebp), %eax        #  56:     add    t30 <- t6, t29
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $95776, %eax            #  57:     assign @t30 <- 95776
    movl    -104(%ebp), %edi       
    movl    %eax, (%edi)           
l_f1_15_while_cond:
    jmp     l_f1_19_if_false        #  59:     goto   19_if_false
    jmp     l_f1_17                 #  60:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_22                 #  63:     goto   22
    jmp     l_f1_22                 #  64:     goto   22
    movl    $1, %eax                #  65:     assign t31 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_f1_23                 #  66:     goto   23
l_f1_22:
    movl    $0, %eax                #  68:     assign t31 <- 0
    movb    %al, -105(%ebp)        
l_f1_23:
    movzbl  -105(%ebp), %eax        #  70:     return t31
    jmp     l_f1_exit              
    jmp     l_f1_15_while_cond      #  71:     goto   15_while_cond

l_f1_exit:
    # epilogue
    addl    $-1230687468, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $v0       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $18919, %eax            #   1:     assign v0 <- 18919
    movl    %eax, -52(%ebp)        
    movl    $83513, %eax            #   2:     add    t3 <- 83513, 11580
    movl    $11580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t4 <- t3, 41310
    movl    $41310, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t5 <- t4, 79317
    movl    $79317, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t6 <- t5, 83984
    movl    $83984, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     sub    t7 <- t6, 20379
    movl    $20379, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     sub    t8 <- t7, 50333
    movl    $50333, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     add    t9 <- t8, 29463
    movl    $29463, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     add    t10 <- t9, 99936
    movl    $99936, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     assign v0 <- t10
    movl    %eax, -52(%ebp)        

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    jmp     l_test_4                #   5:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $89326, %eax            #  11:     add    t0 <- 89326, 82502
    movl    $82502, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t1 <- t0, 66971
    movl    $66971, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #  14:     call   WriteInt
    addl    $4, %esp               
    call    WriteLn                 #  15:     call   WriteLn
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
