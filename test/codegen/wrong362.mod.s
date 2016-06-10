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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t4       <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t5       <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 3 of <array 6 of <array 2 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -96(%ebp)   4  [ $v2       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         
l_f0_2_while_cond:
    movl    $98, %eax               #   2:     if     98 # 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5                 
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -74(%ebp)         
l_f0_7:
    movzbl  -74(%ebp), %eax         #  10:     assign v1 <- t5
    movb    %al, 12(%ebp)          
    jmp     l_f0_2_while_cond       #  11:     goto   2_while_cond
    call    ReadInt                 #  12:     call   t6 <- ReadInt
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  13:     div    t7 <- t6, 20336
    movl    $20336, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  14:     div    t8 <- t7, 49312
    movl    $49312, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  18:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     add    t11 <- t10, 92544
    movl    $92544, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  23:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     add    t14 <- t13, 51336
    movl    $51336, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  28:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     add    t17 <- t16, 20340
    movl    $20340, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t20 <- t19, 38915
    movl    $38915, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  35:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  37:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  38:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $12068, %eax            #  40:     assign @t24 <- 12068
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 5 of <array 7 of <array 6 of <array 3 of <int>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    movl    $97, %eax               #   0:     if     97 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $99, %eax               #   4:     if     99 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    movl    $98, %eax               #   7:     if     98 > 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   8:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $98, %eax               #  13:     if     98 >= 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_13                
    jmp     l_f1_14                 #  14:     goto   14
l_f1_13:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_15:
    movzbl  -13(%ebp), %eax         #  21:     assign v1 <- t4
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #  22:     return 1
    jmp     l_f1_exit              
    movl    $31500, %eax            #  23:     if     31500 = 62433 goto 19
    movl    $62433, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_19                
    jmp     l_f1_20                 #  24:     goto   20
l_f1_19:
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_21                 #  27:     goto   21
l_f1_20:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_21:
    movzbl  -14(%ebp), %eax         #  31:     return t5
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  32:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_5_while_cond       #  33:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #  35:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  38:     call   t7 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    call    dummyINTfunc            #  39:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 3 of <array 6 of <array 2 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 6 of <array 8 of <array 8 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]
    #   -4080(%ebp)  4056  [ $v3       <array 4 of <array 3 of <array 6 of <array 2 of <array 7 of <int>>>>>> %ebp-4080 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4068, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1017, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4080(%ebp)          # local array 'v3': 5 dimensions
    movl    $4,-4076(%ebp)          #   dimension 1: 4 elements
    movl    $3,-4072(%ebp)          #   dimension 2: 3 elements
    movl    $6,-4068(%ebp)          #   dimension 3: 6 elements
    movl    $2,-4064(%ebp)          #   dimension 4: 2 elements
    movl    $7,-4060(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $97, %eax               #   0:     return 97
    jmp     l_f2_exit              
    movl    $100, %eax              #   1:     return 100
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_5                  #   3:     goto   5
    jmp     l_f2_6_while_cond       #   4:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #   6:     goto   0
l_f2_0:
l_f2_9_while_cond:
    movl    $98953, %eax            #   9:     if     98953 > 74720 goto 10_while_body
    movl    $74720, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_while_body     
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_while_body:
    movl    $98, %eax               #  12:     return 98
    jmp     l_f2_exit              
    movl    $97, %eax               #  13:     assign v2 <- 97
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #  14:     param  1 <- 1
    pushl   %eax                   
    leal    -4080(%ebp), %eax       #  15:     &()    t4 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  17:     call   t5 <- f0
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_f2_9_while_cond       #  18:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_16_if_true         #  20:     goto   16_if_true
    jmp     l_f2_17_if_false        #  21:     goto   17_if_false
l_f2_16_if_true:
l_f2_20_while_cond:
    movl    $99, %eax               #  24:     if     99 = 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_21_while_body     
    jmp     l_f2_19                 #  25:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  27:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_15                 #  29:     goto   15
l_f2_17_if_false:
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $4068, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 5 of <array 7 of <array 6 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    call    dummyProcedure          #   2:     call   dummyProcedure
    movl    $98, %eax               #   3:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t1 > 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   6:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   8:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $0, %eax                #  11:     if     0 = 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
l_test_9_if_true:
    leal    v1, %eax                #  14:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  16:     call   t3 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
l_test_17_while_cond:
    jmp     l_test_18_while_body    #  20:     goto   18_while_body
    jmp     l_test_16               #  21:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  23:     goto   17_while_cond
l_test_16:
    jmp     l_test_8                #  25:     goto   8
l_test_10_if_false:
l_test_8:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 10 of <array 5 of <array 7 of <array 6 of <array 3 of <int>>>>>>
    .long    5
    .long   10
    .long    5
    .long    7
    .long    6
    .long    3
    .skip 25200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
