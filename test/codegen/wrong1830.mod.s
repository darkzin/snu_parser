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
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t8       <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 47 of <array 1 of <array 50 of <array 50 of <array 16 of <bool>>>>>>> %ebp+16 ]
    #   -101(%ebp)   1  [ $v4       <char> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     assign v4 <- 97
    movb    %al, -101(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   2:     goto   3_while_body
    jmp     l_f0_3_while_body       #   3:     goto   3_while_body
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    movl    $64962, %eax            #   8:     div    t3 <- 64962, 2124
    movl    $2124, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   9:     div    t4 <- t3, 95263
    movl    $95263, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  10:     mul    t5 <- t4, 82824
    movl    $82824, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  11:     mul    t6 <- t5, 54750
    movl    $54750, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  12:     div    t7 <- t6, 17275
    movl    $17275, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $20716, %eax            #  13:     if     20716 = t7 goto 10
    movl    -92(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $1, %eax                #  16:     assign t8 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f0_12                 #  17:     goto   12
l_f0_11:
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -93(%ebp)         
l_f0_12:
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $98606, %eax            #  24:     mul    t10 <- 98606, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     add    t11 <- t10, 59733
    movl    $59733, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  29:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t14 <- t13, 16291
    movl    $16291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  34:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     add    t17 <- t16, 18956
    movl    $18956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  38:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t20 <- t19, 9062
    movl    $9062, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  41:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  42:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  43:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  45:     add    t24 <- v3, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -93(%ebp), %eax         #  46:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

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
    movl    $100, %eax              #   0:     if     100 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $98, %eax               #   3:     return 98
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #   5:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    movl    $0, %eax                #   8:     if     0 # 1 goto 8_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   9:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  11:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $99, %eax               #  14:     assign v3 <- 99
    movb    %al, -25(%ebp)         
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  18:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
l_f1_14_while_cond:
    jmp     l_f1_19                 #  20:     goto   19
    jmp     l_f1_19                 #  21:     goto   19
    jmp     l_f1_15_while_body      #  22:     goto   15_while_body
l_f1_19:
    jmp     l_f1_15_while_body      #  24:     goto   15_while_body
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  26:     goto   14_while_cond

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 47 of <array 1 of <array 50 of <array 50 of <array 16 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $v1       <bool> %ebp-24 ]
    #   -1880048(%ebp)  1880024  [ $v2       <array 47 of <array 1 of <array 50 of <array 50 of <array 16 of <bool>>>>>> %ebp-1880048 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1880036, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $470009, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1880048(%ebp)       # local array 'v2': 5 dimensions
    movl    $47,-1880044(%ebp)      #   dimension 1: 47 elements
    movl    $1,-1880040(%ebp)       #   dimension 2: 1 elements
    movl    $50,-1880036(%ebp)      #   dimension 3: 50 elements
    movl    $50,-1880032(%ebp)      #   dimension 4: 50 elements
    movl    $16,-1880028(%ebp)      #   dimension 5: 16 elements

    # function body
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_1                  #   2:     goto   1
l_f2_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t3
    movb    %al, -24(%ebp)         
    leal    -1880048(%ebp), %eax    #   9:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  11:     param  1 <- 1
    pushl   %eax                   
    movl    $33777, %eax            #  12:     if     33777 >= 41233 goto 9
    movl    $41233, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_9                 
    jmp     l_f2_10                 #  13:     goto   10
l_f2_9:
    movl    $1, %eax                #  15:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_11                 #  16:     goto   11
l_f2_10:
    movl    $0, %eax                #  18:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_11:
    movzbl  -21(%ebp), %eax         #  20:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  21:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  22:     assign v1 <- t6
    movb    %al, -24(%ebp)         
    jmp     l_f2_15_if_false        #  23:     goto   15_if_false
    call    dummyBOOLfunc           #  24:     call   t7 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_f2_13                 #  25:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $1880036, %esp          # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    movl    $76481, %eax            #   0:     assign v0 <- 76481
    movl    %eax, v0               
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_5:
    call    WriteLn                 #   7:     call   WriteLn
l_test_10_while_cond:
    jmp     l_test_9                #   9:     goto   9
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
l_test_9:
    movl    $98, %eax               #  12:     if     98 >= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  13:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  19:     goto   17_while_cond
    jmp     l_test_exit            
    call    dummyINTfunc            #  21:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_1                #  22:     goto   1
l_test_3_if_false:
l_test_1:
l_test_22_while_cond:
    movl    $91821, %eax            #  26:     if     91821 > 39634 goto 23_while_body
    movl    $39634, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_23_while_body   
    jmp     l_test_21               #  27:     goto   21
l_test_23_while_body:
    jmp     l_test_exit            
    jmp     l_test_22_while_cond    #  30:     goto   22_while_cond
l_test_21:
    movl    $35197, %eax            #  32:     if     35197 >= 56688 goto 27_if_true
    movl    $56688, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_27_if_true      
    jmp     l_test_28_if_false      #  33:     goto   28_if_false
l_test_27_if_true:
    movl    $97, %eax               #  35:     if     97 = 99 goto 31_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_31_if_true      
    jmp     l_test_32_if_false      #  36:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_30               #  38:     goto   30
l_test_32_if_false:
l_test_30:
    call    dummyINTfunc            #  41:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  42:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_test_37_while_cond:
    movl    $1, %eax                #  44:     if     1 # 0 goto 38_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_38_while_body   
    jmp     l_test_36               #  45:     goto   36
l_test_38_while_body:
    jmp     l_test_37_while_cond    #  47:     goto   37_while_cond
l_test_36:
    movl    $18189, %eax            #  49:     assign v0 <- 18189
    movl    %eax, v0               
    jmp     l_test_26               #  50:     goto   26
l_test_28_if_false:
l_test_26:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
