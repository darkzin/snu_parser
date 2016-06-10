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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t23      <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t5       <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 9 of <array 9 of <array 10 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #    -97(%ebp)   1  [ $v2       <bool> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $99, %eax               #   3:     if     99 # 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $53606, %eax            #   9:     if     53606 > 63616 goto 9
    movl    $63616, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_9                 
    jmp     l_f0_10                 #  10:     goto   10
l_f0_9:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_11                 #  13:     goto   11
l_f0_10:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f0_11:
    movzbl  -53(%ebp), %eax         #  17:     assign v2 <- t2
    movb    %al, -97(%ebp)         
    leal    _str_1, %eax            #  18:     &()    t3 <- _str_1
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #  21:     if     100 > 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_15                
    jmp     l_f0_16                 #  22:     goto   16
l_f0_15:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_17                 #  25:     goto   17
l_f0_16:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -77(%ebp)         
l_f0_17:
    movzbl  -77(%ebp), %eax         #  29:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  30:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $98, %eax               #  33:     if     98 > 98 goto 20
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_20                
    jmp     l_f0_21                 #  34:     goto   21
l_f0_20:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f0_22                 #  37:     goto   22
l_f0_21:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -78(%ebp)         
l_f0_22:
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $61378, %eax            #  44:     mul    t7 <- 61378, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  45:     add    t8 <- t7, 23026
    movl    $23026, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  49:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $29970, %eax            #  50:     add    t11 <- 29970, 91676
    movl    $91676, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  51:     add    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  52:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  53:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  54:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  55:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  56:     add    t15 <- t14, 74083
    movl    $74083, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  57:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  58:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  59:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  60:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  61:     add    t18 <- t17, 21396
    movl    $21396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  62:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  63:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  64:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  65:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  66:     add    t22 <- v1, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -78(%ebp), %eax         #  67:     assign @t22 <- t5
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  68:     call   t23 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 9 of <array 9 of <array 10 of <array 4 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 2 of <array 1 of <array 3 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #   -3296(%ebp)  3264  [ $v3       <array 1 of <array 9 of <array 9 of <array 10 of <array 4 of <bool>>>>>> %ebp-3296 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3284, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $821, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3296(%ebp)          # local array 'v3': 5 dimensions
    movl    $1,-3292(%ebp)          #   dimension 1: 1 elements
    movl    $9,-3288(%ebp)          #   dimension 2: 9 elements
    movl    $9,-3284(%ebp)          #   dimension 3: 9 elements
    movl    $10,-3280(%ebp)         #   dimension 4: 10 elements
    movl    $4,-3276(%ebp)          #   dimension 5: 4 elements

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #   2:     if     97 # 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    leal    -3296(%ebp), %eax       #   6:     &()    t5 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   8:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #  10:     goto   9_while_cond
    jmp     l_f1_2                  #  11:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $3284, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]

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
l_f2_1_while_cond:
    movl    $39606, %eax            #   1:     div    t2 <- 39606, 1929
    movl    $1929, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 >= 4664 goto 2_while_body
    movl    $4664, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $69291, %eax            #   5:     param  0 <- 69291
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     return t3
    jmp     l_f2_exit              
    call    ReadInt                 #  11:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    movl    $64465, %eax            #   0:     assign v0 <- 64465
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 < 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $0, %eax                #   5:     if     0 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyBOOLfunc           #  11:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
l_test_1:
    movl    $99, %eax               #  15:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
    jmp     l_test_18_if_false      #  19:     goto   18_if_false
    jmp     l_test_16               #  20:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $28103, %eax            #  23:     assign v0 <- 28103
    movl    %eax, v0               
    call    dummyBOOLfunc           #  24:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_14_while_cond    #  25:     goto   14_while_cond
l_test_13:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
