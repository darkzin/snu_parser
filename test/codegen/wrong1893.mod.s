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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 33 of <array 62 of <array 79 of <array 64 of <array 90 of <bool>>>>>>> %ebp+12 ]
    #    -24(%ebp)   1  [ $v3       <bool> %ebp-24 ]

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
l_f0_1_while_cond:
    movl    $18962, %eax            #   1:     if     18962 > 98526 goto 2_while_body
    movl    $98526, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $1, %eax                #   4:     if     1 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  12:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  15:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  16:     if     1 # 0 goto 11_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  17:     goto   12_if_false
l_f0_11_if_true:
    movl    $97, %eax               #  19:     if     97 <= 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_15                
    jmp     l_f0_16                 #  20:     goto   16
l_f0_15:
    movl    $1, %eax                #  22:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_17                 #  23:     goto   17
l_f0_16:
    movl    $0, %eax                #  25:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f0_17:
    movzbl  -21(%ebp), %eax         #  27:     assign v3 <- t7
    movb    %al, -24(%ebp)         
    call    dummyBOOLfunc           #  28:     call   t8 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movl    $0, %eax                #  29:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_23_if_false        #  30:     goto   23_if_false
    jmp     l_f0_21                 #  31:     goto   21
l_f0_23_if_false:
l_f0_21:
    movl    $0, %eax                #  34:     return 0
    jmp     l_f0_exit              
l_f0_26_while_cond:
    movl    $74624, %eax            #  36:     if     74624 > 97178 goto 27_while_body
    movl    $97178, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_27_while_body     
    jmp     l_f0_25                 #  37:     goto   25
l_f0_27_while_body:
    jmp     l_f0_26_while_cond      #  39:     goto   26_while_cond
l_f0_25:
    call    dummyBOOLfunc           #  41:     call   t9 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_f0_10                 #  42:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 26 of <array 55 of <array 73 of <array 87 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 90 of <array 8 of <array 72 of <array 39 of <array 26 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 83 of <array 66 of <array 28 of <array 5 of <array 25 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]

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
l_f1_1_while_cond:
    call    dummyProcedure          #   1:     call   dummyProcedure
    call    dummyINTfunc            #   2:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
    movl    $4538, %eax             #   4:     sub    t6 <- 4538, 17100
    movl    $17100, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t7 <- t6, 28998
    movl    $28998, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
l_f1_7_while_cond:
    movl    $15905, %eax            #   9:     if     15905 >= 60436 goto 8_while_body
    movl    $60436, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    movl    $25485, %eax            #  12:     assign v5 <- 25485
    movl    %eax, -28(%ebp)        
    jmp     l_f1_7_while_cond       #  13:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
l_f2_1_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
l_f2_3:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t5 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_7:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_9:
    movzbl  -14(%ebp), %eax         #  12:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_15_if_true         #  13:     goto   15_if_true
    jmp     l_f2_16_if_false        #  14:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  16:     goto   14
l_f2_16_if_false:
l_f2_14:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
    movl    $98, %eax               #   5:     if     98 > 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_8               
    jmp     l_test_9                #   6:     goto   9
l_test_8:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #   9:     goto   10
l_test_9:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  13:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_2                #  14:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $97, %eax               #  17:     if     97 < 99 goto 13
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_13              
    jmp     l_test_14               #  18:     goto   14
l_test_13:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  21:     goto   15
l_test_14:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movzbl  -14(%ebp), %eax         #  25:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $91767, %eax            #  27:     mul    t2 <- 91767, 24178
    movl    $24178, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     mul    t3 <- t2, 21998
    movl    $21998, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     sub    t4 <- t3, 52890
    movl    $52890, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     if     t4 > 11342 goto 19_if_true
    movl    $11342, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_19_if_true      
    jmp     l_test_20_if_false      #  31:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  33:     goto   18
l_test_20_if_false:
l_test_18:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
