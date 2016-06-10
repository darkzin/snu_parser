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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v1       <char> %ebp-19 ]

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
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t3 # 61451 goto 2_while_body
    movl    $61451, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   6:     goto   4
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_8_if_true          #  11:     goto   8_if_true
l_f0_8_if_true:
    movl    $100, %eax              #  13:     if     100 >= 100 goto 13
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_13                
    jmp     l_f0_14                 #  14:     goto   14
l_f0_13:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_15                 #  17:     goto   15
l_f0_14:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f0_15:
    movzbl  -17(%ebp), %eax         #  21:     assign v0 <- t4
    movb    %al, -18(%ebp)         
    jmp     l_f0_7                  #  22:     goto   7
l_f0_7:
    movl    $98, %eax               #  24:     assign v1 <- 98
    movb    %al, -19(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 6 of <array 10 of <array 6 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 3 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 7 of <array 7 of <array 9 of <array 1 of <bool>>>>>>> %ebp+20 ]
    #    -25(%ebp)   1  [ $v4       <char> %ebp-25 ]

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
    movl    $27502, %eax            #   0:     if     27502 < 77357 goto 1_if_true
    movl    $77357, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    movl    $97, %eax               #   7:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  11:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t4 <- t3, 78840
    movl    $78840, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t5 <- t4, 43777
    movl    $43777, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     assign v1 <- t5
    movl    %eax, 12(%ebp)         
    jmp     l_f1_10_if_true         #  15:     goto   10_if_true
    jmp     l_f1_10_if_true         #  16:     goto   10_if_true
    jmp     l_f1_10_if_true         #  17:     goto   10_if_true
    jmp     l_f1_10_if_true         #  18:     goto   10_if_true
l_f1_10_if_true:
    movl    $99, %eax               #  20:     return 99
    jmp     l_f1_exit              
    movl    $99, %eax               #  21:     assign v4 <- 99
    movb    %al, -25(%ebp)         
l_f1_20_while_cond:
    jmp     l_f1_19                 #  23:     goto   19
    jmp     l_f1_20_while_cond      #  24:     goto   20_while_cond
l_f1_19:
    movl    $99, %eax               #  26:     assign v4 <- 99
    movb    %al, -25(%ebp)         
    jmp     l_f1_23                 #  27:     goto   23
l_f1_23:
    jmp     l_f1_9                  #  29:     goto   9
l_f1_9:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_6_if_false         #   1:     goto   6_if_false
    jmp     l_f2_4                  #   2:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
    movl    $99, %eax               #   7:     if     99 > 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #   8:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  14:     goto   14_while_cond
    jmp     l_f2_0                  #  15:     goto   0
l_f2_0:
    jmp     l_f2_18_if_false        #  17:     goto   18_if_false
l_f2_20_while_cond:
    movl    $99, %eax               #  19:     if     99 < 100 goto 21_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_21_while_body     
    jmp     l_f2_19                 #  20:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  22:     goto   20_while_cond
l_f2_19:
l_f2_24_while_cond:
    movl    $45561, %eax            #  25:     if     45561 # 88276 goto 25_while_body
    movl    $88276, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_25_while_body     
    jmp     l_f2_23                 #  26:     goto   23
l_f2_25_while_body:
    jmp     l_f2_24_while_cond      #  28:     goto   24_while_cond
l_f2_23:
    jmp     l_f2_16                 #  30:     goto   16
l_f2_18_if_false:
l_f2_16:
l_f2_28_while_cond:
    call    dummyCHARfunc           #  34:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  35:     if     97 > t4 goto 29_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_29_while_body     
    jmp     l_f2_27                 #  36:     goto   27
l_f2_29_while_body:
    jmp     l_f2_28_while_cond      #  38:     goto   28_while_cond
l_f2_27:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_0                #   2:     goto   0
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    movl    $100, %eax              #   5:     assign v0 <- 100
    movb    %al, v0                
l_test_7_while_cond:
    jmp     l_test_6                #   7:     goto   6
    jmp     l_test_exit            
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  10:     goto   12_while_cond
    jmp     l_test_7_while_cond     #  11:     goto   7_while_cond
l_test_6:
    movl    $8348, %eax             #  13:     sub    t0 <- 8348, 39638
    movl    $39638, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t1 <- t0, 15905
    movl    $15905, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t2 <- t1, 3242
    movl    $3242, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $79981, %eax            #  16:     if     79981 > t2 goto 15_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_15_if_true      
    jmp     l_test_16_if_false      #  17:     goto   16_if_false
l_test_15_if_true:
    movl    $2180, %eax             #  19:     assign v1 <- 2180
    movl    %eax, v1               
    movl    $100, %eax              #  20:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_14               #  21:     goto   14
l_test_16_if_false:
l_test_14:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
