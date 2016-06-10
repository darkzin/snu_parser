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
    #    -13(%ebp)   1  [ $t33      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t34      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 33 of <array 96 of <array 71 of <array 54 of <array 33 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 16 of <array 64 of <array 88 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 96 of <array 75 of <array 49 of <array 96 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 44 of <array 46 of <array 76 of <array 100 of <array 38 of <int>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 = 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   6:     call   t33 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   7:     goto   8
    movl    $1, %eax                #   8:     assign t34 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $0, %eax                #  11:     assign t34 <- 0
    movb    %al, -14(%ebp)         
l_f0_9:
    movzbl  -14(%ebp), %eax         #  13:     return t34
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t33      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t34      <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 12 of <array 22 of <array 97 of <array 25 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t33 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     if     100 <= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #   8:     call   t34 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t33      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t34      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t35      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t36      <ptr(4) to <array 44 of <array 46 of <array 76 of <array 100 of <array 38 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t37      <ptr(4) to <array 1 of <array 96 of <array 75 of <array 49 of <array 96 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t38      <ptr(4) to <array 47 of <array 16 of <array 64 of <array 88 of <array 6 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t39      <ptr(4) to <array 33 of <array 96 of <array 71 of <array 54 of <array 33 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t40      <bool> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp+8 ]
    #   -1603286852(%ebp)  1603286808  [ $v1       <array 33 of <array 96 of <array 71 of <array 54 of <array 33 of <int>>>>>> %ebp-1603286852 ]
    #   -1628698460(%ebp)  25411608  [ $v2       <array 47 of <array 16 of <array 64 of <array 88 of <array 6 of <bool>>>>>> %ebp-1628698460 ]
    #   -1662567284(%ebp)  33868824  [ $v3       <array 1 of <array 96 of <array 75 of <array 49 of <array 96 of <bool>>>>>> %ebp-1662567284 ]
    #   294275188(%ebp)  -1956842472  [ $v4       <array 44 of <array 46 of <array 76 of <array 100 of <array 38 of <int>>>>>> %ebp+294275188 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-294275200, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-73568800, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1603286852(%ebp)    # local array 'v1': 5 dimensions
    movl    $33,-1603286848(%ebp)   #   dimension 1: 33 elements
    movl    $96,-1603286844(%ebp)   #   dimension 2: 96 elements
    movl    $71,-1603286840(%ebp)   #   dimension 3: 71 elements
    movl    $54,-1603286836(%ebp)   #   dimension 4: 54 elements
    movl    $33,-1603286832(%ebp)   #   dimension 5: 33 elements
    movl    $5,-1628698460(%ebp)    # local array 'v2': 5 dimensions
    movl    $47,-1628698456(%ebp)   #   dimension 1: 47 elements
    movl    $16,-1628698452(%ebp)   #   dimension 2: 16 elements
    movl    $64,-1628698448(%ebp)   #   dimension 3: 64 elements
    movl    $88,-1628698444(%ebp)   #   dimension 4: 88 elements
    movl    $6,-1628698440(%ebp)    #   dimension 5: 6 elements
    movl    $5,-1662567284(%ebp)    # local array 'v3': 5 dimensions
    movl    $1,-1662567280(%ebp)    #   dimension 1: 1 elements
    movl    $96,-1662567276(%ebp)   #   dimension 2: 96 elements
    movl    $75,-1662567272(%ebp)   #   dimension 3: 75 elements
    movl    $49,-1662567268(%ebp)   #   dimension 4: 49 elements
    movl    $96,-1662567264(%ebp)   #   dimension 5: 96 elements
    movl    $5,294275188(%ebp)      # local array 'v4': 5 dimensions
    movl    $44,294275192(%ebp)     #   dimension 1: 44 elements
    movl    $46,294275196(%ebp)     #   dimension 2: 46 elements
    movl    $76,294275200(%ebp)     #   dimension 3: 76 elements
    movl    $100,294275204(%ebp)    #   dimension 4: 100 elements
    movl    $38,294275208(%ebp)     #   dimension 5: 38 elements

    # function body
    movl    $67913, %eax            #   0:     add    t33 <- 67913, 20202
    movl    $20202, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t34 <- t33, 9916
    movl    $9916, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t34
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   3:     call   t35 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_f2_3_while_cond:
    jmp     l_f2_2                  #   5:     goto   2
    leal    294275188(%ebp), %eax   #   6:     &()    t36 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  3 <- t36
    pushl   %eax                   
    leal    -1662567284(%ebp), %eax #   8:     &()    t37 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     param  2 <- t37
    pushl   %eax                   
    leal    -1628698460(%ebp), %eax #  10:     &()    t38 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     param  1 <- t38
    pushl   %eax                   
    leal    -1603286852(%ebp), %eax #  12:     &()    t39 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     param  0 <- t39
    pushl   %eax                   
    call    f0                      #  14:     call   t40 <- f0
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  15:     if     t40 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #  16:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  18:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $-294275200, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 44 of <array 46 of <array 76 of <array 100 of <array 38 of <int>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <ptr(4) to <array 1 of <array 96 of <array 75 of <array 49 of <array 96 of <bool>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <ptr(4) to <array 47 of <array 16 of <array 64 of <array 88 of <array 6 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <ptr(4) to <array 33 of <array 96 of <array 71 of <array 54 of <array 33 of <int>>>>>>> %ebp-116 ]
    #   -117(%ebp)   1  [ $t32      <bool> %ebp-117 ]
    #   -124(%ebp)   4  [ $t4       <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t5       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t6       <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <ptr(4) to <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $132, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $33, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    v0, %eax                #   1:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #   3:     call   t2 <- f2
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    $100, %eax              #   4:     if     100 # 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_3_if_true       
    jmp     l_test_4_if_false       #   5:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_6                #   7:     goto   6
l_test_6:
    movl    $228, %eax              #   9:     assign v1 <- 228
    movl    %eax, v1               
    jmp     l_test_10               #  10:     goto   10
l_test_10:
    call    dummyBOOLfunc           #  12:     call   t3 <- dummyBOOLfunc
    movb    %al, -105(%ebp)        
l_test_15_while_cond:
    jmp     l_test_14               #  14:     goto   14
    jmp     l_test_15_while_cond    #  15:     goto   15_while_cond
l_test_14:
    jmp     l_test_2                #  17:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_19_if_false      #  20:     goto   19_if_false
    leal    v0, %eax                #  21:     &()    t4 <- v0
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  22:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  23:     call   t5 <- f2
    addl    $4, %esp               
    movl    %eax, -128(%ebp)       
    leal    v0, %eax                #  24:     &()    t6 <- v0
    movl    %eax, -132(%ebp)       
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  26:     &()    t7 <- v0
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  27:     param  0 <- t7
    pushl   %eax                   
    call    DIM                     #  28:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $67544, %eax            #  29:     mul    t9 <- 67544, t8
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  30:     add    t10 <- t9, 49107
    movl    $49107, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  32:     &()    t11 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  34:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  35:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     add    t14 <- t13, 86506
    movl    $86506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  37:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  38:     &()    t15 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  40:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  41:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  42:     add    t18 <- t17, 16335
    movl    $16335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  44:     &()    t19 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  45:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  46:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  47:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     add    t22 <- t21, 42849
    movl    $42849, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    v0, %eax                #  50:     &()    t24 <- v0
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  51:     param  0 <- t24
    pushl   %eax                   
    call    DOFS                    #  52:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  53:     add    t26 <- t23, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -132(%ebp), %eax        #  54:     add    t27 <- t6, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $73652, %eax            #  55:     assign @t27 <- 73652
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
    leal    v5, %eax                #  56:     &()    t28 <- v5
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  57:     param  3 <- t28
    pushl   %eax                   
    leal    v4, %eax                #  58:     &()    t29 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  59:     param  2 <- t29
    pushl   %eax                   
    leal    v3, %eax                #  60:     &()    t30 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  61:     param  1 <- t30
    pushl   %eax                   
    leal    v2, %eax                #  62:     &()    t31 <- v2
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  63:     param  0 <- t31
    pushl   %eax                   
    call    f0                      #  64:     call   t32 <- f0
    addl    $16, %esp              
    movb    %al, -117(%ebp)        
    jmp     l_test_27_if_false      #  65:     goto   27_if_false
    jmp     l_test_25               #  66:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_17               #  69:     goto   17
l_test_19_if_false:
l_test_17:

l_test_exit:
    # epilogue
    addl    $132, %esp              # remove locals
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
v0:                                 # <array 47 of <array 76 of <array 38 of <array 4 of <array 67 of <int>>>>>>
    .long    5
    .long   47
    .long   76
    .long   38
    .long    4
    .long   67
    .skip 145508992
v1:                                 # <int>
    .skip    4
v2:                                 # <array 33 of <array 96 of <array 71 of <array 54 of <array 33 of <int>>>>>>
    .long    5
    .long   33
    .long   96
    .long   71
    .long   54
    .long   33
    .skip 1603286784
v3:                                 # <array 47 of <array 16 of <array 64 of <array 88 of <array 6 of <bool>>>>>>
    .long    5
    .long   47
    .long   16
    .long   64
    .long   88
    .long    6
    .skip 25411584
v4:                                 # <array 1 of <array 96 of <array 75 of <array 49 of <array 96 of <bool>>>>>>
    .long    5
    .long    1
    .long   96
    .long   75
    .long   49
    .long   96
    .skip 33868800
v5:                                 # <array 44 of <array 46 of <array 76 of <array 100 of <array 38 of <int>>>>>>
    .long    5
    .long   44
    .long   46
    .long   76
    .long  100
    .long   38
    .skip -1956842496








    # end of global data section
    #-----------------------------------------

    .end
##################################################
