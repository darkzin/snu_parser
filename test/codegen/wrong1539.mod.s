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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $23798, %eax            #   1:     if     23798 < 90181 goto 2_while_body
    movl    $90181, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   7:     goto   5
    movl    $100, %eax              #   8:     if     100 < 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $3834, %eax             #  14:     return 3834
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  15:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $90092, %eax            #  16:     return 90092
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  17:     goto   6_while_cond
l_f0_5:
l_f0_16_while_cond:
    jmp     l_f0_17_while_body      #  20:     goto   17_while_body
    jmp     l_f0_17_while_body      #  21:     goto   17_while_body
    jmp     l_f0_15                 #  22:     goto   15
l_f0_17_while_body:
    movl    $37775, %eax            #  24:     return 37775
    jmp     l_f0_exit              
    movl    $99, %eax               #  25:     if     99 < 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  26:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_23                 #  28:     goto   23
l_f0_25_if_false:
l_f0_23:
    jmp     l_f0_16_while_cond      #  31:     goto   16_while_cond
l_f0_15:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 2 of <array 30 of <array 37 of <array 65 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 64 of <array 51 of <array 6 of <array 60 of <array 22 of <char>>>>>>> %ebp+16 ]
    #    -26(%ebp)   1  [ $v3       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    movl    $62384, %eax            #   1:     add    t5 <- 62384, 99691
    movl    $99691, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $97551, %eax            #   2:     if     97551 < t5 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $1, %eax                #   7:     if     1 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   8:     goto   6
l_f1_5:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_7:
    movzbl  -17(%ebp), %eax         #  15:     assign v3 <- t6
    movb    %al, -26(%ebp)         
    call    dummyINTfunc            #  16:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $99263, %eax            #  17:     if     99263 = t7 goto 10
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  18:     goto   11
l_f1_10:
    movl    $1, %eax                #  20:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_12                 #  21:     goto   12
l_f1_11:
    movl    $0, %eax                #  23:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f1_12:
    movzbl  -25(%ebp), %eax         #  25:     assign v3 <- t8
    movb    %al, -26(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 64 of <array 51 of <array 6 of <array 60 of <array 22 of <char>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 17 of <array 2 of <array 30 of <array 37 of <array 65 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t31      <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 91 of <array 47 of <array 6 of <array 15 of <array 44 of <int>>>>>>> %ebp+20 ]
    #   -2453244(%ebp)  2453124  [ $v4       <array 17 of <array 2 of <array 30 of <array 37 of <array 65 of <bool>>>>>> %ebp-2453244 ]
    #   -28304148(%ebp)  25850904  [ $v5       <array 64 of <array 51 of <array 6 of <array 60 of <array 22 of <char>>>>>> %ebp-28304148 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28304136, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7076034, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2453244(%ebp)       # local array 'v4': 5 dimensions
    movl    $17,-2453240(%ebp)      #   dimension 1: 17 elements
    movl    $2,-2453236(%ebp)       #   dimension 2: 2 elements
    movl    $30,-2453232(%ebp)      #   dimension 3: 30 elements
    movl    $37,-2453228(%ebp)      #   dimension 4: 37 elements
    movl    $65,-2453224(%ebp)      #   dimension 5: 65 elements
    movl    $5,-28304148(%ebp)      # local array 'v5': 5 dimensions
    movl    $64,-28304144(%ebp)     #   dimension 1: 64 elements
    movl    $51,-28304140(%ebp)     #   dimension 2: 51 elements
    movl    $6,-28304136(%ebp)      #   dimension 3: 6 elements
    movl    $60,-28304132(%ebp)     #   dimension 4: 60 elements
    movl    $22,-28304128(%ebp)     #   dimension 5: 22 elements

    # function body
    movl    $91361, %eax            #   0:     div    t5 <- 91361, 99707
    movl    $99707, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   1:     div    t6 <- t5, 18929
    movl    $18929, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   2:     div    t7 <- t6, 74278
    movl    $74278, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    call    ReadInt                 #   3:     call   t8 <- ReadInt
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #   4:     mul    t9 <- t7, t8
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   5:     return t9
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   6:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_4_if_false         #   7:     goto   4_if_false
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $34324, %eax            #  11:     mul    t12 <- 34324, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 57412
    movl    $57412, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t16 <- t15, 33589
    movl    $33589, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t19 <- t18, 72057
    movl    $72057, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  26:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t22 <- t21, 63285
    movl    $63285, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  30:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  32:     add    t26 <- v3, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4707, %eax             #  33:     assign @t26 <- 4707
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    leal    -28304148(%ebp), %eax   #  34:     &()    t27 <- v5
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  35:     param  2 <- t27
    pushl   %eax                   
    leal    -2453244(%ebp), %eax    #  36:     &()    t28 <- v4
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  37:     param  1 <- t28
    pushl   %eax                   
    movl    $33426, %eax            #  38:     sub    t29 <- 33426, 30982
    movl    $30982, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  39:     add    t30 <- t29, 20288
    movl    $20288, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  40:     param  0 <- t30
    pushl   %eax                   
    call    f1                      #  41:     call   t31 <- f1
    addl    $12, %esp              
    movb    %al, -97(%ebp)         
    jmp     l_f2_2                  #  42:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $28304136, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 91 of <array 47 of <array 6 of <array 15 of <array 44 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
l_test_1_while_cond:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $98, %eax               #   4:     if     98 >= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    v0, %eax                #  11:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  3 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  14:     param  2 <- t2
    pushl   %eax                   
    movl    $54240, %eax            #  15:     param  1 <- 54240
    pushl   %eax                   
    movl    $25700, %eax            #  16:     param  0 <- 25700
    pushl   %eax                   
    call    f2                      #  17:     call   t3 <- f2
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  18:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  19:     assign v1 <- t4
    movb    %al, v1                
    jmp     l_test_13_if_true       #  20:     goto   13_if_true
    jmp     l_test_13_if_true       #  21:     goto   13_if_true
l_test_13_if_true:
    movl    $98, %eax               #  23:     if     98 < 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  24:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  26:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_12               #  29:     goto   12
l_test_12:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 91 of <array 47 of <array 6 of <array 15 of <array 44 of <int>>>>>>
    .long    5
    .long   91
    .long   47
    .long    6
    .long   15
    .long   44
    .skip 67747680
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
