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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $v3       <bool> %ebp-23 ]

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
    movl    $98711, %eax            #   0:     mul    t5 <- 98711, 23707
    movl    $23707, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t6 <- t5, 79367
    movl    $79367, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t6
    movl    %eax, 8(%ebp)          
l_f0_2_while_cond:
    movl    $100, %eax              #   4:     assign v2 <- 100
    movb    %al, -22(%ebp)         
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
    call    dummyBOOLfunc           #   6:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   7:     assign v3 <- t7
    movb    %al, -23(%ebp)         

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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_4                  #   0:     goto   4
l_f1_4:
    jmp     l_f1_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_3:
    movzbl  -18(%ebp), %eax         #   8:     return t5
    jmp     l_f1_exit              
    movl    $99, %eax               #   9:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #  11:     call   t6 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t7 <- t6, 62608
    movl    $62608, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     mul    t8 <- t7, 63784
    movl    $63784, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t9 <- t8, 14702
    movl    $14702, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     mul    t10 <- t9, 95529
    movl    $95529, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $28055, %eax            #  16:     if     28055 # t10 goto 8
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_8                 
    jmp     l_f1_9                  #  17:     goto   9
l_f1_8:
    movl    $1, %eax                #  19:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_10                 #  20:     goto   10
l_f1_9:
    movl    $0, %eax                #  22:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_10:
    movzbl  -17(%ebp), %eax         #  24:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -61(%ebp)   1  [ $t5       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 7 of <array 7 of <array 3 of <array 5 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 5 of <array 7 of <array 4 of <array 10 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   4:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   5:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $9293, %eax             #   6:     mul    t7 <- 9293, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   7:     add    t8 <- t7, 81372
    movl    $81372, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  10:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  11:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t11 <- t10, 14126
    movl    $14126, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  15:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t14 <- t13, 84073
    movl    $84073, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t16, 69817
    movl    $69817, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  24:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  25:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    20(%ebp), %eax          #  27:     add    t21 <- v4, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $49169, %eax            #  28:     assign @t21 <- 49169
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_0                  #  29:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_7_while_cond:
    movl    $99, %eax               #  33:     assign v2 <- 99
    movb    %al, 12(%ebp)          
    jmp     l_f2_7_while_cond       #  34:     goto   7_while_cond
l_f2_11_while_cond:
    movl    $100, %eax              #  36:     if     100 > 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_12_while_body     
    jmp     l_f2_10                 #  37:     goto   10
l_f2_12_while_body:
    jmp     l_f2_14                 #  39:     goto   14
l_f2_14:
l_f2_18_while_cond:
    jmp     l_f2_17                 #  42:     goto   17
    jmp     l_f2_18_while_cond      #  43:     goto   18_while_cond
l_f2_17:
l_f2_21_while_cond:
    jmp     l_f2_20                 #  46:     goto   20
    jmp     l_f2_21_while_cond      #  47:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_11_while_cond      #  49:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 <= t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   5:     goto   4
l_test_4:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_8_while_cond:
    movl    $97, %eax               #  10:     if     97 < 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_9_while_body    
    jmp     l_test_7                #  11:     goto   7
l_test_9_while_body:
    jmp     l_test_11               #  13:     goto   11
l_test_11:
    movl    $75321, %eax            #  15:     div    t1 <- 75321, 96708
    movl    $96708, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $45122, %eax            #  16:     if     45122 >= t1 goto 15
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_15              
    jmp     l_test_16               #  17:     goto   16
l_test_15:
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_17               #  20:     goto   17
l_test_16:
    movl    $0, %eax                #  22:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_17:
    movzbl  -21(%ebp), %eax         #  24:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_8_while_cond     #  25:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
    call    dummyINTfunc            #  28:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  30:     call   f0
    addl    $4, %esp               
    jmp     l_test_23_if_false      #  31:     goto   23_if_false
    call    dummyCHARfunc           #  32:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $100, %eax              #  33:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_21               #  34:     goto   21
l_test_23_if_false:
l_test_21:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
