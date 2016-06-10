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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $99, %eax               #   2:     if     99 # 99 goto 4
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_4                 
    jmp     l_f0_5                  #   3:     goto   5
l_f0_4:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #  10:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
l_f0_9_while_cond:
    jmp     l_f0_10_while_body      #  14:     goto   10_while_body
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_16_while_cond:
    jmp     l_f0_15                 #  18:     goto   15
    call    dummyBOOLfunc           #  19:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_16_while_cond      #  20:     goto   16_while_cond
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 5 of <array 6 of <array 1 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -22(%ebp)   1  [ $v3       <bool> %ebp-22 ]

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
    movl    $4824, %eax             #   0:     sub    t2 <- 4824, 95655
    movl    $95655, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 72436
    movl    $72436, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t3
    jmp     l_f1_exit              
    movl    $0, %eax                #   3:     assign v3 <- 0
    movb    %al, -22(%ebp)         
    movl    $88701, %eax            #   4:     if     88701 <= 96729 goto 3_if_true
    movl    $96729, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_8_if_false         #   7:     goto   8_if_false
    jmp     l_f1_11_if_false        #   8:     goto   11_if_false
    jmp     l_f1_9                  #   9:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $47840, %eax            #  12:     if     47840 > 86497 goto 13
    movl    $86497, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13                
    jmp     l_f1_14                 #  13:     goto   14
l_f1_13:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_15                 #  16:     goto   15
l_f1_14:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_15:
    movzbl  -21(%ebp), %eax         #  20:     assign v3 <- t4
    movb    %al, -22(%ebp)         
    movl    $99, %eax               #  21:     if     99 = 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  22:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  24:     goto   17
l_f1_19_if_false:
l_f1_17:
    movl    $17363, %eax            #  27:     return 17363
    jmp     l_f1_exit              
    movl    $6819, %eax             #  28:     return 6819
    jmp     l_f1_exit              
l_f1_24_while_cond:
    jmp     l_f1_24_while_cond      #  30:     goto   24_while_cond
    movl    $64389, %eax            #  31:     return 64389
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  32:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_2                  #  35:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t7       <char> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 5 of <array 4 of <array 7 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $74210, %eax            #   0:     sub    t2 <- 74210, 68704
    movl    $68704, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $75126, %eax            #   1:     add    t3 <- 75126, 784
    movl    $784, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 >= t3 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t4
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_5                  #  12:     goto   5
    jmp     l_f2_9                  #  13:     goto   9
    jmp     l_f2_10                 #  14:     goto   10
l_f2_9:
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_11                 #  17:     goto   11
l_f2_10:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f2_11:
    movzbl  -22(%ebp), %eax         #  21:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  22:     goto   6_while_cond
l_f2_5:
    movl    $76957, %eax            #  24:     if     76957 <= 93249 goto 14_if_true
    movl    $93249, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  25:     goto   15_if_false
l_f2_14_if_true:
    call    dummyBOOLfunc           #  27:     call   t6 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_f2_18                 #  28:     goto   18
l_f2_18:
    jmp     l_f2_23_if_false        #  30:     goto   23_if_false
    jmp     l_f2_21                 #  31:     goto   21
l_f2_23_if_false:
l_f2_21:
    call    dummyCHARfunc           #  34:     call   t7 <- dummyCHARfunc
    movb    %al, -24(%ebp)         
l_f2_26_while_cond:
    jmp     l_f2_25                 #  36:     goto   25
    jmp     l_f2_26_while_cond      #  37:     goto   26_while_cond
l_f2_25:
    jmp     l_f2_13                 #  39:     goto   13
l_f2_15_if_false:
l_f2_13:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyProcedure          #   5:     call   dummyProcedure
    jmp     l_test_exit            
    movl    $61336, %eax            #   7:     sub    t0 <- 61336, 83580
    movl    $83580, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $99169, %eax            #   8:     if     99169 <= t0 goto 7_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_10               #  11:     goto   10
l_test_10:
    jmp     l_test_6                #  13:     goto   6
l_test_8_if_false:
l_test_6:
    call    ReadInt                 #  16:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
