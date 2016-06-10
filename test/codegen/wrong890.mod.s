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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_6                  #   2:     goto   6
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   4:     goto   7
l_f0_6:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #   8:     if     t2 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   9:     goto   3_if_false
l_f0_2_if_true:
    movl    $100, %eax              #  11:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  12:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $34583, %eax            #  15:     sub    t3 <- 34583, 49296
    movl    $49296, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     assign v0 <- t3
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <bool> %ebp-18 ]

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
l_f1_1_while_cond:
    movl    $19834, %eax            #   1:     if     19834 = 95092 goto 2_while_body
    movl    $95092, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    ReadInt                 #   4:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $100, %eax              #   8:     if     100 < 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  11:     goto   6_while_cond
l_f1_5:
    movl    $99, %eax               #  13:     if     99 > 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
l_f1_10_if_true:
    movl    $0, %eax                #  16:     if     0 # 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_14                
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f1_16:
    movzbl  -17(%ebp), %eax         #  24:     assign v0 <- t2
    movb    %al, -18(%ebp)         
l_f1_19_while_cond:
    jmp     l_f1_18                 #  26:     goto   18
    jmp     l_f1_19_while_cond      #  27:     goto   19_while_cond
l_f1_18:
    movl    $1, %eax                #  29:     assign v0 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_9                  #  30:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 2 of <array 9 of <array 7 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 9 of <array 7 of <array 3 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -22(%ebp)   1  [ $v4       <bool> %ebp-22 ]

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
    jmp     l_f2_0                  #   1:     goto   0
l_f2_4_while_cond:
    movl    $90670, %eax            #   3:     if     90670 = 92408 goto 7
    movl    $92408, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #   4:     goto   8
l_f2_7:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #   7:     goto   9
l_f2_8:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  11:     assign v4 <- t1
    movb    %al, -22(%ebp)         
    jmp     l_f2_4_while_cond       #  12:     goto   4_while_cond
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  15:     if     100 >= 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_12                
    jmp     l_f2_13                 #  16:     goto   13
l_f2_12:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_14                 #  19:     goto   14
l_f2_13:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_14:
    movzbl  -14(%ebp), %eax         #  23:     assign v4 <- t2
    movb    %al, -22(%ebp)         
    movl    $25515, %eax            #  24:     div    t3 <- 25515, 74503
    movl    $74503, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     if     t3 > 18916 goto 17
    movl    $18916, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  26:     goto   18
l_f2_17:
    movl    $1, %eax                #  28:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_19                 #  29:     goto   19
l_f2_18:
    movl    $0, %eax                #  31:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_19:
    movzbl  -21(%ebp), %eax         #  33:     return t4
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
    movl    $97, %eax               #   2:     if     97 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   3:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
    jmp     l_test_9                #   9:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_1_while_cond     #  12:     goto   1_while_cond
l_test_13_while_cond:
    jmp     l_test_12               #  14:     goto   12
    jmp     l_test_12               #  15:     goto   12
    jmp     l_test_13_while_cond    #  16:     goto   13_while_cond
l_test_12:
    call    f0                      #  18:     call   t0 <- f0
    movb    %al, -13(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
