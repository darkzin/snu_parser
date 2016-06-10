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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <char> %ebp-22 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t3
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  10:     if     97 >= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $99, %eax               #  16:     assign v1 <- 99
    movb    %al, -22(%ebp)         
    call    ReadInt                 #  17:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_6                  #  18:     goto   6
l_f0_6:

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
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t20      <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t21      <bool> %ebp-58 ]
    #    -59(%ebp)   1  [ $t22      <char> %ebp-59 ]
    #    -60(%ebp)   1  [ $t23      <bool> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 7 of <array 2 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 8 of <array 1 of <array 3 of <char>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v2       <char> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $21630, %eax            #   3:     mul    t3 <- 21630, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $53386, %eax            #   4:     add    t4 <- 53386, 32945
    movl    $32945, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   5:     add    t5 <- t3, t4
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #   9:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  10:     add    t8 <- t7, 84516
    movl    $84516, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  14:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 99503
    movl    $99503, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t14 <- t13, 61390
    movl    $61390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  23:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  25:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $100, %eax              #  26:     assign @t18 <- 100
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_3_if_false         #  27:     goto   3_if_false
    jmp     l_f1_6_if_false         #  28:     goto   6_if_false
    jmp     l_f1_4                  #  29:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_9_if_false         #  32:     goto   9_if_false
    jmp     l_f1_7                  #  33:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $34937, %eax            #  36:     if     34937 > 6239 goto 11_if_true
    movl    $6239, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  37:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  39:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $78650, %eax            #  42:     if     78650 >= 93625 goto 15
    movl    $93625, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_15                
    jmp     l_f1_16                 #  43:     goto   16
l_f1_15:
    movl    $1, %eax                #  45:     assign t19 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f1_17                 #  46:     goto   17
l_f1_16:
    movl    $0, %eax                #  48:     assign t19 <- 0
    movb    %al, -49(%ebp)         
l_f1_17:
    movzbl  -49(%ebp), %eax         #  50:     return t19
    jmp     l_f1_exit              
l_f1_20_while_cond:
    jmp     l_f1_19                 #  52:     goto   19
    jmp     l_f1_20_while_cond      #  53:     goto   20_while_cond
l_f1_19:
    movl    $28628, %eax            #  55:     if     28628 = 36417 goto 23_if_true
    movl    $36417, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  56:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  58:     goto   22
l_f1_24_if_false:
l_f1_22:
    movl    $1, %eax                #  61:     if     1 # 0 goto 27
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_27                
    jmp     l_f1_28                 #  62:     goto   28
l_f1_27:
    movl    $1, %eax                #  64:     assign t20 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_29                 #  65:     goto   29
l_f1_28:
    movl    $0, %eax                #  67:     assign t20 <- 0
    movb    %al, -57(%ebp)         
l_f1_29:
    movzbl  -57(%ebp), %eax         #  69:     return t20
    jmp     l_f1_exit              
    movl    $17395, %eax            #  70:     if     17395 < 47252 goto 32
    movl    $47252, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_32                
    jmp     l_f1_33                 #  71:     goto   33
l_f1_32:
    movl    $1, %eax                #  73:     assign t21 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f1_34                 #  74:     goto   34
l_f1_33:
    movl    $0, %eax                #  76:     assign t21 <- 0
    movb    %al, -58(%ebp)         
l_f1_34:
    movzbl  -58(%ebp), %eax         #  78:     return t21
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  79:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  82:     call   t22 <- dummyCHARfunc
    movb    %al, -59(%ebp)         
    movl    $99, %eax               #  83:     if     99 >= t22 goto 37
    movzbl  -59(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_37                
    jmp     l_f1_38                 #  84:     goto   38
l_f1_37:
    movl    $1, %eax                #  86:     assign t23 <- 1
    movb    %al, -60(%ebp)         
    jmp     l_f1_39                 #  87:     goto   39
l_f1_38:
    movl    $0, %eax                #  89:     assign t23 <- 0
    movb    %al, -60(%ebp)         
l_f1_39:
    movzbl  -60(%ebp), %eax         #  91:     return t23
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 4 of <array 10 of <array 5 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $81830, %eax            #   7:     mul    t3 <- 81830, 81330
    movl    $81330, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     if     t3 <= 44444 goto 5_if_true
    movl    $44444, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   9:     goto   6_if_false
l_f2_5_if_true:
    movl    $48344, %eax            #  11:     assign v2 <- 48344
    movl    %eax, 16(%ebp)         
    jmp     l_f2_4                  #  12:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    f0                      #  15:     call   t4 <- f0
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    jmp     l_test_exit            
    movl    $78638, %eax            #   1:     if     78638 <= 68843 goto 2_if_true
    movl    $68843, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    leal    _str_1, %eax            #   5:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $49069, %eax            #  10:     assign v0 <- 49069
    movl    %eax, v0               
l_test_11_while_cond:
    movl    $22689, %eax            #  12:     if     22689 >= 45495 goto 12_while_body
    movl    $45495, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  13:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
    jmp     l_test_1                #  17:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
l_test_16_while_cond:
    movl    $98, %eax               #  22:     if     98 >= 100 goto 19
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_19              
    jmp     l_test_20               #  23:     goto   20
l_test_19:
    movl    $1, %eax                #  25:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_21               #  26:     goto   21
l_test_20:
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_21:
    movl    $1, %eax                #  30:     if     1 = t1 goto 17_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  31:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  33:     goto   16_while_cond
l_test_15:

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
