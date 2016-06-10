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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 81 of <array 78 of <array 70 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
l_f0_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   7:     return t6
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_7_while_body       #   9:     goto   7_while_body
l_f0_7_while_body:
    movl    $100, %eax              #  11:     if     100 > 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  12:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_6_while_cond       #  17:     goto   6_while_cond
    movl    $1, %eax                #  18:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_21                 #  19:     goto   21
    movl    $0, %eax                #  20:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_21:
    movl    $100, %eax              #  22:     if     100 > 97 goto 23
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_23                
    jmp     l_f0_24                 #  23:     goto   24
l_f0_23:
    movl    $1, %eax                #  25:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_25                 #  26:     goto   25
l_f0_24:
    movl    $0, %eax                #  28:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f0_25:
    movzbl  -15(%ebp), %eax         #  30:     if     t7 = t8 goto 15
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_15                
    jmp     l_f0_16                 #  31:     goto   16
l_f0_15:
    movl    $1, %eax                #  33:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_17                 #  34:     goto   17
l_f0_16:
    movl    $0, %eax                #  36:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f0_17:
    movzbl  -17(%ebp), %eax         #  38:     return t9
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]

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
    movl    $95888, %eax            #   0:     add    t5 <- 95888, 45537
    movl    $45537, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t6 <- t5, 32448
    movl    $32448, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t7 <- t6, 33209
    movl    $33209, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t7
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    call    dummyProcedure          #   5:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 43 of <array 6 of <array 78 of <array 3 of <int>>>>>>> %ebp+8 ]

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
    call    f1                      #   0:     call   t5 <- f1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t6 <- t5, 55946
    movl    $55946, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t7 <- t6, 83880
    movl    $83880, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t7
    jmp     l_f2_exit              
    movl    $67894, %eax            #   4:     if     67894 # 90551 goto 2_if_true
    movl    $90551, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_2_if_true          #   5:     goto   2_if_true
    jmp     l_f2_2_if_true          #   6:     goto   2_if_true
    jmp     l_f2_2_if_true          #   7:     goto   2_if_true
l_f2_2_if_true:
    jmp     l_f2_1                  #   9:     goto   1
l_f2_1:
    movl    $9202, %eax             #  11:     div    t8 <- 9202, 62441
    movl    $62441, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    movl    $77599, %eax            #   1:     div    t0 <- 77599, 89922
    movl    $89922, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 92598
    movl    $92598, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t1
    movl    %eax, v1               
    jmp     l_test_0                #   4:     goto   0
l_test_0:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
    jmp     l_test_12_if_false      #   8:     goto   12_if_false
    movl    $97, %eax               #   9:     if     97 >= 100 goto 14
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_14              
    jmp     l_test_15               #  10:     goto   15
l_test_14:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_16               #  13:     goto   16
l_test_15:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_16:
    movzbl  -21(%ebp), %eax         #  17:     assign v2 <- t2
    movb    %al, v2                
    movl    $98, %eax               #  18:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  19:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #  20:     assign v2 <- 1
    movb    %al, v2                
    jmp     l_test_10               #  21:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_22_if_false      #  24:     goto   22_if_false
    movl    $28930, %eax            #  25:     assign v1 <- 28930
    movl    %eax, v1               
    movl    $97, %eax               #  26:     if     97 = 99 goto 26
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_26              
    jmp     l_test_27               #  27:     goto   27
l_test_26:
    movl    $1, %eax                #  29:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_28               #  30:     goto   28
l_test_27:
    movl    $0, %eax                #  32:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_28:
    movzbl  -22(%ebp), %eax         #  34:     assign v2 <- t3
    movb    %al, v2                
    jmp     l_test_32_if_false      #  35:     goto   32_if_false
    jmp     l_test_30               #  36:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_20               #  39:     goto   20
l_test_22_if_false:
l_test_20:
    call    f1                      #  42:     call   t4 <- f1
    movl    %eax, -28(%ebp)        

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
