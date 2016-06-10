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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 33 of <array 67 of <array 38 of <array 49 of <char>>>>>>> %ebp+12 ]

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
l_f0_1_while_cond:
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   2:     goto   6
    movl    $0, %eax                #   3:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   5:     if     t2 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   8:     assign v1 <- 100
    movb    %al, 8(%ebp)           
    call    dummyINTfunc            #   9:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  12:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 57 of <array 81 of <array 31 of <array 6 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     if     100 # 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    movl    $99807, %eax            #   5:     if     99807 >= 19790 goto 7_while_body
    movl    $19790, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
l_f1_10_while_cond:
    movl    $97, %eax               #   9:     if     97 <= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
l_f1_9:
    call    ReadInt                 #  14:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $47756, %eax            #  15:     return 47756
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  16:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #  18:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_16_while_cond:
    movl    $63497, %eax            #  22:     if     63497 < 30663 goto 17_while_body
    movl    $30663, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_17_while_body     
    jmp     l_f1_15                 #  23:     goto   15
l_f1_17_while_body:
l_f1_20_while_cond:
    movl    $100, %eax              #  26:     if     100 > 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_21_while_body     
    jmp     l_f1_19                 #  27:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  29:     goto   20_while_cond
l_f1_19:
    call    dummyCHARfunc           #  31:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_f1_25_while_cond:
    movl    $99, %eax               #  33:     if     99 <= 99 goto 26_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_26_while_body     
    jmp     l_f1_24                 #  34:     goto   24
l_f1_26_while_body:
    jmp     l_f1_25_while_cond      #  36:     goto   25_while_cond
l_f1_24:
    movl    $77341, %eax            #  38:     return 77341
    jmp     l_f1_exit              
    jmp     l_f1_16_while_cond      #  39:     goto   16_while_cond
l_f1_15:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <ptr(4) to <array 5 of <array 57 of <array 81 of <array 31 of <array 6 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t24      <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t3       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 65 of <array 51 of <array 28 of <array 64 of <array 57 of <char>>>>>>> %ebp+20 ]
    #   -105(%ebp)   1  [ $v5       <char> %ebp-105 ]
    #   -4293940(%ebp)  4293834  [ $v6       <array 5 of <array 57 of <array 81 of <array 31 of <array 6 of <bool>>>>>> %ebp-4293940 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4293928, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1073482, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4293940(%ebp)       # local array 'v6': 5 dimensions
    movl    $5,-4293936(%ebp)       #   dimension 1: 5 elements
    movl    $57,-4293932(%ebp)      #   dimension 2: 57 elements
    movl    $81,-4293928(%ebp)      #   dimension 3: 81 elements
    movl    $31,-4293924(%ebp)      #   dimension 4: 31 elements
    movl    $6,-4293920(%ebp)       #   dimension 5: 6 elements

    # function body
    movl    $85814, %eax            #   0:     sub    t2 <- 85814, 3002
    movl    $3002, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     add    t3 <- t2, 75184
    movl    $75184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   2:     sub    t4 <- t3, 1684
    movl    $1684, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     add    t5 <- t4, 17375
    movl    $17375, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   4:     assign v3 <- t5
    movl    %eax, 16(%ebp)         
    movl    $1, %eax                #   5:     if     1 # 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   6:     goto   3_if_false
l_f2_2_if_true:
    call    dummyProcedure          #   8:     call   dummyProcedure
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  10:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $87654, %eax            #  12:     mul    t7 <- 87654, t6
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  13:     add    t8 <- t7, 3180
    movl    $3180, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  17:     mul    t10 <- t8, t9
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 70397
    movl    $70397, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 16720
    movl    $16720, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  26:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t17 <- t16, 42939
    movl    $42939, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  30:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  31:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  33:     add    t21 <- v4, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $99, %eax               #  34:     assign @t21 <- 99
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    leal    -4293940(%ebp), %eax    #  35:     &()    t22 <- v6
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  36:     param  0 <- t22
    pushl   %eax                   
    call    f1                      #  37:     call   t23 <- f1
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  39:     goto   9
l_f2_9:
    jmp     l_f2_14_if_false        #  41:     goto   14_if_false
    jmp     l_f2_12                 #  42:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_1                  #  45:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyBOOLfunc           #  48:     call   t24 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4293928, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    jmp     l_test_2                #   0:     goto   2
    jmp     l_test_2                #   1:     goto   2
    jmp     l_test_2                #   2:     goto   2
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $91700, %eax            #   9:     assign v1 <- 91700
    movl    %eax, v1               
    jmp     l_test_exit            
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
