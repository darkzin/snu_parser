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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <char> %ebp-25 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $3402, %eax             #   4:     return 3402
    jmp     l_f0_exit              
    movl    $37852, %eax            #   5:     assign v0 <- 37852
    movl    %eax, -24(%ebp)        
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
    movl    $41752, %eax            #   9:     return 41752
    jmp     l_f0_exit              
    movl    $34824, %eax            #  10:     return 34824
    jmp     l_f0_exit              
    movl    $97, %eax               #  11:     assign v1 <- 97
    movb    %al, -25(%ebp)         
    jmp     l_f0_14_if_false        #  12:     goto   14_if_false
    jmp     l_f0_12                 #  13:     goto   12
l_f0_14_if_false:
l_f0_12:
    call    dummyINTfunc            #  16:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_6                  #  17:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_21                 #  20:     goto   21
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_22                 #  22:     goto   22
l_f0_21:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_22:
    movl    $0, %eax                #  26:     if     0 # t5 goto 17_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  27:     goto   18_if_false
l_f0_17_if_true:
    movl    $100, %eax              #  29:     if     100 < 99 goto 26_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  30:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  32:     goto   25
l_f0_27_if_false:
l_f0_25:
    jmp     l_f0_16                 #  35:     goto   16
l_f0_18_if_false:
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 5 of <array 4 of <array 5 of <array 1 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
    movl    $58196, %eax            #   5:     if     58196 < 87887 goto 8_if_true
    movl    $87887, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   6:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_if_false:
l_f1_7:
l_f1_12_while_cond:
    movl    $38768, %eax            #  12:     if     38768 <= 8971 goto 13_while_body
    movl    $8971, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_13_while_body     
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  15:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_15                 #  17:     goto   15
l_f1_15:
l_f1_19_while_cond:
    jmp     l_f1_19_while_cond      #  20:     goto   19_while_cond
    jmp     l_f1_4                  #  21:     goto   4
l_f1_4:
l_f1_22_while_cond:
    jmp     l_f1_22_while_cond      #  24:     goto   22_while_cond

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 9 of <array 3 of <array 6 of <array 2 of <char>>>>>>> %ebp+8 ]
    #    -53(%ebp)   1  [ $v1       <char> %ebp-53 ]

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
    call    f0                      #   0:     call   t4 <- f0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     mul    t5 <- t4, 39047
    movl    $39047, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     mul    t6 <- t5, 28384
    movl    $28384, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     mul    t7 <- t6, 98110
    movl    $98110, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     div    t8 <- t7, 89649
    movl    $89649, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     div    t9 <- t8, 20996
    movl    $20996, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   6:     mul    t10 <- t9, 28894
    movl    $28894, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     return t10
    jmp     l_f2_exit              
    movl    $30669, %eax            #   8:     add    t11 <- 30669, 58240
    movl    $58240, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t12 <- t11, 74926
    movl    $74926, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t13 <- t12, 78479
    movl    $78479, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     return t13
    jmp     l_f2_exit              
    movl    $99, %eax               #  12:     assign v1 <- 99
    movb    %al, -53(%ebp)         

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    movl    $71043, %eax            #   2:     if     71043 < 99984 goto 3_while_body
    movl    $99984, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #   7:     goto   11
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movl    $1, %eax                #  10:     if     1 # t1 goto 7_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #  11:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  13:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #  17:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  18:     if     99 # 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_15              
    jmp     l_test_16               #  19:     goto   16
l_test_15:
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_17               #  22:     goto   17
l_test_16:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_17:
    movzbl  -16(%ebp), %eax         #  26:     assign v0 <- t3
    movb    %al, v0                
    movl    $52189, %eax            #  27:     if     52189 < 7103 goto 20_if_true
    movl    $7103, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  28:     goto   21_if_false
l_test_20_if_true:
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  31:     goto   24_while_cond
l_test_27_while_cond:
    jmp     l_test_27_while_cond    #  33:     goto   27_while_cond
    call    WriteLn                 #  34:     call   WriteLn
    jmp     l_test_exit            
    movl    $82899, %eax            #  36:     assign v1 <- 82899
    movl    %eax, v1               
l_test_33_while_cond:
    jmp     l_test_33_while_cond    #  38:     goto   33_while_cond
    jmp     l_test_19               #  39:     goto   19
l_test_21_if_false:
l_test_19:

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
