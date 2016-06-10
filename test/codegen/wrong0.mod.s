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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]

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
    jmp     l_f0_3                  #   1:     goto   3
    movl    $1, %eax                #   2:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   3:     goto   4
l_f0_3:
    movl    $0, %eax                #   5:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #   7:     return t5
    jmp     l_f0_exit              
l_f0_9_while_cond:
    movl    $97, %eax               #   9:     if     97 # 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_10_while_body     
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
l_f0_8:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 8 of <array 10 of <array 6 of <array 5 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $92969, %eax            #   1:     mul    t6 <- 92969, 54363
    movl    $54363, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t7 <- t6, 11347
    movl    $11347, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $68711, %eax            #   3:     add    t8 <- 68711, t7
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t8
    jmp     l_f1_exit              
    movl    $72806, %eax            #   5:     add    t9 <- 72806, 34754
    movl    $34754, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t9
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 8 of <array 10 of <array 6 of <array 5 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t8       <char> %ebp-109 ]
    #   -116(%ebp)   4  [ $t9       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>>> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 8 of <array 6 of <array 7 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #   -120(%ebp)   4  [ $v2       <int> %ebp-120 ]
    #   -2304(%ebp)  2184  [ $v3       <array 3 of <array 4 of <array 4 of <array 9 of <array 5 of <char>>>>>> %ebp-2304 ]
    #   -26328(%ebp)  24024  [ $v4       <array 10 of <array 8 of <array 10 of <array 6 of <array 5 of <bool>>>>>> %ebp-26328 ]
    #   -26329(%ebp)   1  [ $v5       <char> %ebp-26329 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $26320, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6580, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2304(%ebp)          # local array 'v3': 5 dimensions
    movl    $3,-2300(%ebp)          #   dimension 1: 3 elements
    movl    $4,-2296(%ebp)          #   dimension 2: 4 elements
    movl    $4,-2292(%ebp)          #   dimension 3: 4 elements
    movl    $9,-2288(%ebp)          #   dimension 4: 9 elements
    movl    $5,-2284(%ebp)          #   dimension 5: 5 elements
    movl    $5,-26328(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-26324(%ebp)        #   dimension 1: 10 elements
    movl    $8,-26320(%ebp)         #   dimension 2: 8 elements
    movl    $10,-26316(%ebp)        #   dimension 3: 10 elements
    movl    $6,-26312(%ebp)         #   dimension 4: 6 elements
    movl    $5,-26308(%ebp)         #   dimension 5: 5 elements

    # function body
    movl    $58313, %eax            #   0:     assign v2 <- 58313
    movl    %eax, -120(%ebp)       
    leal    -26328(%ebp), %eax      #   1:     &()    t5 <- v4
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     param  3 <- t5
    pushl   %eax                   
    leal    -2304(%ebp), %eax       #   3:     &()    t6 <- v3
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   4:     param  2 <- t6
    pushl   %eax                   
    movl    $99, %eax               #   5:     param  1 <- 99
    pushl   %eax                   
    movl    $97, %eax               #   6:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #   7:     call   t7 <- f1
    addl    $16, %esp              
    movl    %eax, -108(%ebp)       
    call    dummyCHARfunc           #   8:     call   t8 <- dummyCHARfunc
    movb    %al, -109(%ebp)        
    leal    -2304(%ebp), %eax       #   9:     &()    t9 <- v3
    movl    %eax, -116(%ebp)       
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    leal    -2304(%ebp), %eax       #  11:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  13:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $27099, %eax            #  14:     mul    t12 <- 27099, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t13 <- t12, 2230
    movl    $2230, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    leal    -2304(%ebp), %eax       #  17:     &()    t14 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  19:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t17 <- t16, 72654
    movl    $72654, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    leal    -2304(%ebp), %eax       #  23:     &()    t18 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  25:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  26:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t21 <- t20, 27276
    movl    $27276, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    leal    -2304(%ebp), %eax       #  29:     &()    t22 <- v3
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  31:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  32:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  33:     add    t25 <- t24, 66227
    movl    $66227, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  34:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -2304(%ebp), %eax       #  35:     &()    t27 <- v3
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  36:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  37:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  38:     add    t29 <- t26, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -116(%ebp), %eax        #  39:     add    t30 <- t9, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movzbl  -109(%ebp), %eax        #  40:     assign @t30 <- t8
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $26320, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]

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
    movl    $98, %eax               #   0:     if     98 = 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_12               #  10:     goto   12
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  12:     goto   13
l_test_12:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  16:     if     t1 # 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7               
    jmp     l_test_8                #  17:     goto   8
l_test_7:
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_9                #  20:     goto   9
l_test_8:
    movl    $0, %eax                #  22:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_9:
    movzbl  -15(%ebp), %eax         #  24:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    call    ReadInt                 #  26:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     if     t3 = 90580 goto 17
    movl    $90580, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17              
    jmp     l_test_18               #  28:     goto   18
l_test_17:
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_19               #  31:     goto   19
l_test_18:
    movl    $0, %eax                #  33:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_test_19:
    movzbl  -21(%ebp), %eax         #  35:     assign v0 <- t4
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
