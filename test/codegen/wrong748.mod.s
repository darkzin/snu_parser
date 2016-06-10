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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $58452, %eax            #   1:     if     58452 <= t6 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $86985, %eax            #   4:     assign v1 <- 86985
    movl    %eax, -24(%ebp)        
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $46963, %eax            #   8:     if     46963 >= 28482 goto 10
    movl    $28482, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10                
    jmp     l_f0_7                  #   9:     goto   7
l_f0_10:
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_8                  #  12:     goto   8
l_f0_7:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f0_8:
    movzbl  -17(%ebp), %eax         #  16:     assign v2 <- t7
    movb    %al, -25(%ebp)         
    jmp     l_f0_14                 #  17:     goto   14
    jmp     l_f0_14                 #  18:     goto   14
    movl    $1, %eax                #  19:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_15                 #  20:     goto   15
l_f0_14:
    movl    $0, %eax                #  22:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f0_15:
    movzbl  -18(%ebp), %eax         #  24:     assign v2 <- t8
    movb    %al, -25(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 3 of <array 7 of <array 10 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 4 of <array 1 of <array 9 of <array 8 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 9 of <array 10 of <array 3 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -13(%ebp)   1  [ $v5       <char> %ebp-13 ]

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
    movl    $98, %eax               #   0:     assign v5 <- 98
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   6:     goto   5
    movl    $100, %eax              #   7:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #   9:     assign v1 <- 1
    movb    %al, -22(%ebp)         
l_f2_11_while_cond:
    jmp     l_f2_10                 #  11:     goto   10
    jmp     l_f2_11_while_cond      #  12:     goto   11_while_cond
l_f2_10:
    movl    $97, %eax               #  14:     if     97 # 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  15:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  17:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_6_while_cond       #  20:     goto   6_while_cond
l_f2_5:
    movl    $93330, %eax            #  22:     mul    t7 <- 93330, 25851
    movl    $25851, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $52129, %eax            #  23:     if     52129 <= t7 goto 18
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_18                
    jmp     l_f2_19                 #  24:     goto   19
l_f2_18:
    movl    $1, %eax                #  26:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_20                 #  27:     goto   20
l_f2_19:
    movl    $0, %eax                #  29:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f2_20:
    movzbl  -21(%ebp), %eax         #  31:     assign v1 <- t8
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]

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
    movl    $99, %eax               #   1:     if     99 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $966, %eax              #   4:     if     966 >= 68655 goto 5
    movl    $68655, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_5               
    jmp     l_test_6                #   5:     goto   6
l_test_5:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   8:     goto   7
l_test_6:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
l_test_10_while_cond:
    movl    $60191, %eax            #  14:     if     60191 > 25536 goto 11_while_body
    movl    $25536, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  15:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
    jmp     l_test_1_while_cond     #  19:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     if     t1 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  23:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_exit            
    jmp     l_test_13               #  26:     goto   13
l_test_15_if_false:
l_test_13:
l_test_18_while_cond:
    call    f0                      #  30:     call   t2 <- f0
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  31:     if     t2 < 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19_while_body   
    jmp     l_test_17               #  32:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  34:     goto   18_while_cond
l_test_17:
    call    dummyCHARfunc           #  36:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  37:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -16(%ebp), %eax         #  38:     if     t3 < t4 goto 22_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_22_if_true      
    jmp     l_test_23_if_false      #  39:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  41:     goto   21
l_test_23_if_false:
l_test_21:
    movl    $77113, %eax            #  44:     if     77113 < 29649 goto 26_if_true
    movl    $29649, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_26_if_true      
    jmp     l_test_27_if_false      #  45:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_exit            
    movl    $33904, %eax            #  48:     assign v1 <- 33904
    movl    %eax, v1               
    call    ReadInt                 #  49:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_test_25               #  50:     goto   25
l_test_27_if_false:
l_test_25:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
