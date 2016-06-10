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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 53 of <array 32 of <array 99 of <array 75 of <array 38 of <int>>>>>>> %ebp+8 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t11 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_2_while_body       #   3:     goto   2_while_body
    jmp     l_f0_2_while_body       #   4:     goto   2_while_body
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    movl    $40096, %eax            #   9:     if     40096 < 13130 goto 7_if_true
    movl    $13130, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  10:     goto   8_if_false
l_f0_7_if_true:
    call    dummyINTfunc            #  12:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_6                  #  13:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_15_while_cond:
    jmp     l_f0_14                 #  17:     goto   14
    movl    $1, %eax                #  18:     if     1 = 0 goto 18_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  19:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  21:     goto   17
l_f0_19_if_false:
l_f0_17:
    jmp     l_f0_15_while_cond      #  24:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_11                 #  26:     goto   11
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 34 of <array 79 of <array 79 of <array 85 of <array 37 of <bool>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    movl    $57674, %eax            #   0:     div    t11 <- 57674, 18150
    movl    $18150, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t11
    movl    %eax, -20(%ebp)        
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
    movl    $98, %eax               #   3:     assign v2 <- 98
    movb    %al, -21(%ebp)         
    movl    $90710, %eax            #   4:     if     90710 <= 23153 goto 9_if_true
    movl    $23153, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   5:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #   7:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_4                  #  10:     goto   4
l_f1_4:
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  16:     goto   12
    jmp     l_f1_17_if_false        #  17:     goto   17_if_false
    jmp     l_f1_15                 #  18:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_18                 #  21:     goto   18
l_f1_18:
    jmp     l_f1_13_while_cond      #  23:     goto   13_while_cond
l_f1_12:

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    jmp     l_f2_5                  #   0:     goto   5
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_6                  #   2:     goto   6
l_f2_5:
    movl    $1, %eax                #   4:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $0, %eax                #   7:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movl    $1, %eax                #   9:     if     1 = t11 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #  10:     goto   2
l_f2_1:
    movl    $1, %eax                #  12:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #  13:     goto   3
l_f2_2:
    movl    $0, %eax                #  15:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  17:     assign v1 <- t12
    movb    %al, -16(%ebp)         
l_f2_12_while_cond:
    movl    $99, %eax               #  19:     if     99 <= 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  20:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  22:     goto   12_while_cond
l_f2_11:
l_f2_16_while_cond:
    jmp     l_f2_15                 #  25:     goto   15
    movl    $5382, %eax             #  26:     assign v2 <- 5382
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  27:     call   t13 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_f2_24_while_cond:
    movl    $100, %eax              #  29:     if     100 = 99 goto 25_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_25_while_body     
    jmp     l_f2_23                 #  30:     goto   23
l_f2_25_while_body:
    jmp     l_f2_24_while_cond      #  32:     goto   24_while_cond
l_f2_23:
    jmp     l_f2_18                 #  34:     goto   18
l_f2_18:
    jmp     l_f2_16_while_cond      #  36:     goto   16_while_cond
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $21574, %eax            #   0:     if     21574 <= 92962 goto 1_if_true
    movl    $92962, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $24855, %eax            #   8:     if     24855 >= 47814 goto 7_if_true
    movl    $47814, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_exit            
    movl    $16023, %eax            #  12:     assign v0 <- 16023
    movl    %eax, v0               
    movl    $97, %eax               #  13:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #  14:     call   t0 <- f2
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #  15:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_6                #  16:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $2066, %eax             #  19:     sub    t2 <- 2066, 8275
    movl    $8275, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t3 <- t2, 14040
    movl    $14040, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $74230, %eax            #  21:     add    t4 <- 74230, 83644
    movl    $83644, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t5 <- t4, 99593
    movl    $99593, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     sub    t6 <- t5, 17406
    movl    $17406, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t7 <- t6, 53610
    movl    $53610, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     sub    t8 <- t7, 75936
    movl    $75936, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     sub    t9 <- t8, 30298
    movl    $30298, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -32(%ebp), %eax         #  27:     if     t3 < t9 goto 15
    movl    -56(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_15              
    jmp     l_test_16               #  28:     goto   16
l_test_15:
    movl    $1, %eax                #  30:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_17               #  31:     goto   17
l_test_16:
    movl    $0, %eax                #  33:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_test_17:
    movzbl  -21(%ebp), %eax         #  35:     assign v1 <- t10
    movb    %al, v1                
    jmp     l_test_20_if_true       #  36:     goto   20_if_true
    jmp     l_test_20_if_true       #  37:     goto   20_if_true
l_test_20_if_true:
    jmp     l_test_19               #  39:     goto   19
l_test_19:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
