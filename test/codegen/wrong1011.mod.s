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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 18 of <array 49 of <array 58 of <array 22 of <array 41 of <bool>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v4       <char> %ebp-29 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 51730
    movl    $51730, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v3 <- t2
    movl    %eax, -28(%ebp)        
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
    call    dummyBOOLfunc           #   4:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
l_f0_7_while_cond:
    movl    $99, %eax               #   6:     if     99 > 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   9:     goto   7_while_cond
l_f0_6:
l_f0_11_while_cond:
    jmp     l_f0_10                 #  12:     goto   10
    jmp     l_f0_11_while_cond      #  13:     goto   11_while_cond
l_f0_10:
    movl    $100, %eax              #  15:     if     100 <= 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  16:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  18:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_1                  #  21:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  24:     call   t4 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  25:     assign v4 <- t4
    movb    %al, -29(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 89 of <array 83 of <array 36 of <array 65 of <array 31 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 27 of <array 25 of <array 22 of <array 6 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v6       <int> %ebp-28 ]

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
    movl    $9308, %eax             #   0:     sub    t1 <- 9308, 12280
    movl    $12280, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 73591
    movl    $73591, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 40667
    movl    $40667, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v6 <- t3
    movl    %eax, -28(%ebp)        
    jmp     l_f1_exit              
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 98 of <array 9 of <array 30 of <array 1 of <array 34 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 19 of <array 33 of <array 78 of <array 96 of <array 35 of <bool>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v5       <bool> %ebp-25 ]

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
    movl    $62385, %eax            #   0:     if     62385 = 91596 goto 1_if_true
    movl    $91596, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $42271, %eax            #   3:     return 42271
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    movl    $81886, %eax            #   8:     return 81886
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    ReadInt                 #  12:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #  13:     if     97 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  14:     goto   12_if_false
l_f2_11_if_true:
    movl    $15621, %eax            #  16:     assign v4 <- 15621
    movl    %eax, -24(%ebp)        
    movl    $97, %eax               #  17:     if     97 # 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_16                
    jmp     l_f2_17                 #  18:     goto   17
l_f2_16:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_18                 #  21:     goto   18
l_f2_17:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_18:
    movzbl  -17(%ebp), %eax         #  25:     assign v5 <- t2
    movb    %al, -25(%ebp)         
    jmp     l_f2_10                 #  26:     goto   10
l_f2_12_if_false:
l_f2_10:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_3                #   2:     goto   3
l_test_3:
    movl    $99, %eax               #   4:     if     99 < 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7               
    jmp     l_test_8                #   5:     goto   8
l_test_7:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #   8:     goto   9
l_test_8:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_9:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #  13:     assign v1 <- 98
    movb    %al, v1                
    movl    $1, %eax                #  14:     if     1 # 0 goto 13_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $1, %eax                #  20:     if     1 # 1 goto 17_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  23:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_1_while_cond     #  26:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_23_if_false      #  29:     goto   23_if_false
    jmp     l_test_26_if_false      #  30:     goto   26_if_false
    movl    $1, %eax                #  31:     if     1 # 1 goto 28_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_28_if_true      
    jmp     l_test_29_if_false      #  32:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  34:     goto   27
l_test_29_if_false:
l_test_27:
l_test_32_while_cond:
    jmp     l_test_31               #  38:     goto   31
    jmp     l_test_32_while_cond    #  39:     goto   32_while_cond
l_test_31:
    movl    $11570, %eax            #  41:     if     11570 = 54967 goto 35_if_true
    movl    $54967, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_35_if_true      
    jmp     l_test_36_if_false      #  42:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_34               #  44:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_exit            
    jmp     l_test_24               #  48:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_21               #  51:     goto   21
l_test_23_if_false:
l_test_21:
    movl    $71916, %eax            #  54:     assign v2 <- 71916
    movl    %eax, v2               

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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
