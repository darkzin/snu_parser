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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <bool> %ebp-13 ]

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
    jmp     l_f0_0                  #   0:     goto   0
l_f0_0:
l_f0_5_while_cond:
    movl    $11348, %eax            #   3:     if     11348 = 98476 goto 6_while_body
    movl    $98476, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_10_if_false        #   6:     goto   10_if_false
    jmp     l_f0_8                  #   7:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $100, %eax              #  10:     if     100 = 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  11:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  13:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $98, %eax               #  16:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    jmp     l_f0_5_while_cond       #  17:     goto   5_while_cond
l_f0_4:
    movl    $0, %eax                #  19:     assign v3 <- 0
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 10 of <array 9 of <array 9 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    call    ReadInt                 #   2:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $68377, %eax            #   3:     if     68377 = t4 goto 3_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   7:     goto   5
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_12_if_false        #  12:     goto   12_if_false
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_2_while_cond       #  16:     goto   2_while_cond
l_f1_1:
    movl    $13048, %eax            #  18:     if     13048 > 30717 goto 14_if_true
    movl    $30717, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  19:     goto   15_if_false
l_f1_14_if_true:
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_13                 #  22:     goto   13
l_f1_15_if_false:
l_f1_13:

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t3       <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $t4       <char> %ebp-86 ]
    #    -92(%ebp)   4  [ $t5       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 10 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -109(%ebp)   1  [ $v4       <char> %ebp-109 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $67231, %eax            #   3:     assign v3 <- 67231
    movl    %eax, 20(%ebp)         
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #   5:     assign v4 <- t3
    movb    %al, -109(%ebp)        
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    movzbl  -86(%ebp), %eax         #  10:     assign v4 <- t4
    movb    %al, -109(%ebp)        
    movl    $34677, %eax            #  11:     sub    t5 <- 34677, 15858
    movl    $15858, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  12:     sub    t6 <- t5, 84545
    movl    $84545, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  13:     sub    t7 <- t6, 73243
    movl    $73243, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  14:     add    t8 <- t7, 71745
    movl    $71745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  15:     sub    t9 <- t8, 65822
    movl    $65822, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  16:     add    t10 <- t9, 57094
    movl    $57094, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     add    t11 <- t10, 11623
    movl    $11623, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $80851, %eax            #  21:     mul    t13 <- 80851, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     add    t14 <- t13, 48523
    movl    $48523, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     add    t17 <- t16, 19952
    movl    $19952, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  32:     add    t20 <- t19, 87300
    movl    $87300, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  36:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  37:     add    t23 <- t22, 59204
    movl    $59204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  38:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  40:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  41:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  42:     add    t27 <- v2, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -20(%ebp), %eax         #  43:     assign @t27 <- t11
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $100, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 10 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $98, %eax               #   2:     if     98 >= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $28076, %eax            #   8:     param  3 <- 28076
    pushl   %eax                   
    leal    v0, %eax                #   9:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  2 <- t0
    pushl   %eax                   
    movl    $1, %eax                #  11:     param  1 <- 1
    pushl   %eax                   
    movl    $1, %eax                #  12:     param  0 <- 1
    pushl   %eax                   
    call    f2                      #  13:     call   t1 <- f2
    addl    $16, %esp              
    movl    %eax, -20(%ebp)        
l_test_10_while_cond:
    movl    $100, %eax              #  15:     if     100 >= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11_while_body   
    jmp     l_test_9                #  16:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond
l_test_9:
    jmp     l_test_2_while_cond     #  20:     goto   2_while_cond
l_test_1:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_16               #  23:     goto   16
    movl    $0, %eax                #  24:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_16:
    movzbl  -21(%ebp), %eax         #  26:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            

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
v0:                                 # <array 10 of <array 4 of <array 8 of <array 10 of <array 10 of <int>>>>>>
    .long    5
    .long   10
    .long    4
    .long    8
    .long   10
    .long   10
    .skip 128000
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
