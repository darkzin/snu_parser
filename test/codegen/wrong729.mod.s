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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v3       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 9 of <array 5 of <array 6 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 3 of <array 8 of <array 5 of <array 10 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 3 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $75109, %eax            #   2:     sub    t11 <- 75109, 25003
    movl    $25003, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $17151, %eax            #   3:     if     17151 < t11 goto 3_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    movl    $61590, %eax            #   6:     return 61590
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #   9:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v3       <bool> %ebp+8 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $47904, %eax            #   0:     sub    t10 <- 47904, 9338
    movl    $9338, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t10 < 35586 goto 1_if_true
    movl    $35586, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_4                  #   4:     goto   4
l_f1_4:
l_f1_8_while_cond:
    jmp     l_f1_7                  #   7:     goto   7
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
l_f1_7:
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  11:     goto   11_while_cond
    movl    $77158, %eax            #  12:     if     77158 > 29495 goto 14
    movl    $29495, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_14                
    jmp     l_f1_15                 #  13:     goto   15
l_f1_14:
    movl    $1, %eax                #  15:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_16                 #  16:     goto   16
l_f1_15:
    movl    $0, %eax                #  18:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_16:
    movzbl  -17(%ebp), %eax         #  20:     return t11
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  21:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_20_if_false        #  24:     goto   20_if_false
    movl    $100, %eax              #  25:     if     100 >= 99 goto 22
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_22                
    jmp     l_f1_23                 #  26:     goto   23
l_f1_22:
    movl    $1, %eax                #  28:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_24                 #  29:     goto   24
l_f1_23:
    movl    $0, %eax                #  31:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f1_24:
    movzbl  -18(%ebp), %eax         #  33:     return t12
    jmp     l_f1_exit              
    movl    $25991, %eax            #  34:     assign v4 <- 25991
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #  35:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_18                 #  36:     goto   18
l_f1_20_if_false:
l_f1_18:
    call    dummyBOOLfunc           #  39:     call   t13 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         

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
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 10 of <array 1 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 9 of <array 9 of <array 9 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 10 of <array 8 of <array 3 of <array 2 of <array 4 of <char>>>>>>> %ebp+16 ]
    #    -36(%ebp)   4  [ $v6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v7       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $49065, %eax            #   0:     add    t10 <- 49065, 36934
    movl    $36934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t11 <- t10, 68015
    movl    $68015, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v6 <- t11
    movl    %eax, -36(%ebp)        
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   4:     goto   3_while_body
    jmp     l_f2_3_while_body       #   5:     goto   3_while_body
l_f2_3_while_body:
l_f2_7_while_cond:
    jmp     l_f2_6                  #   8:     goto   6
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
l_f2_6:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  12:     goto   9
    jmp     l_f2_10_while_cond      #  13:     goto   10_while_cond
l_f2_9:
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  16:     goto   13_while_cond
    jmp     l_f2_2_while_cond       #  17:     goto   2_while_cond
    movl    $28084, %eax            #  18:     add    t12 <- 28084, 45424
    movl    $45424, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $54359, %eax            #  19:     add    t13 <- 54359, 12475
    movl    $12475, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     if     t12 >= t13 goto 16
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_16                
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $1, %eax                #  23:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $0, %eax                #  26:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f2_18:
    movzbl  -29(%ebp), %eax         #  28:     assign v7 <- t14
    movb    %al, -37(%ebp)         

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 # t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   4:     if     97 <= 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   5:     goto   6
l_test_5:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   8:     goto   7
l_test_6:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  14:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  15:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $40756, %eax            #  19:     div    t3 <- 40756, 32675
    movl    $32675, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     assign v2 <- t3
    movl    %eax, v2               
    call    dummyCHARfunc           #  21:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  22:     assign v1 <- t4
    movb    %al, v1                
    movl    $77169, %eax            #  23:     assign v2 <- 77169
    movl    %eax, v2               
l_test_16_while_cond:
    movl    $97, %eax               #  25:     if     97 <= 98 goto 21
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21              
    jmp     l_test_22               #  26:     goto   22
l_test_21:
    movl    $1, %eax                #  28:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_23               #  29:     goto   23
l_test_22:
    movl    $0, %eax                #  31:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_test_23:
    movzbl  -22(%ebp), %eax         #  33:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  34:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  35:     if     t6 = 1 goto 20
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20              
    jmp     l_test_15               #  36:     goto   15
l_test_20:
    jmp     l_test_15               #  38:     goto   15
    jmp     l_test_16_while_cond    #  39:     goto   16_while_cond
l_test_15:
l_test_26_while_cond:
    movl    $86771, %eax            #  42:     mul    t7 <- 86771, 65993
    movl    $65993, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     mul    t8 <- t7, 87132
    movl    $87132, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  44:     add    t9 <- t8, 4612
    movl    $4612, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  45:     if     t9 > 22863 goto 27_while_body
    movl    $22863, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_27_while_body   
    jmp     l_test_25               #  46:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  48:     goto   26_while_cond
l_test_25:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
