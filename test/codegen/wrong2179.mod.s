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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    movl    $100, %eax              #   2:     return 100
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   3:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   7:     return t4
    jmp     l_f0_exit              
    movl    $47227, %eax            #   8:     if     47227 > 68655 goto 10_if_true
    movl    $68655, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   9:     goto   11_if_false
l_f0_10_if_true:
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $0, %eax                #  12:     if     0 # 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  13:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  15:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_9                  #  18:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 27 of <array 8 of <array 8 of <array 64 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
l_f1_2_while_cond:
    movl    $26399, %eax            #   3:     return 26399
    jmp     l_f1_exit              
    movl    $100, %eax              #   4:     assign v3 <- 100
    movb    %al, -13(%ebp)         
    jmp     l_f1_2_while_cond       #   5:     goto   2_while_cond
    jmp     l_f1_9_if_false         #   6:     goto   9_if_false
    movl    $0, %eax                #   7:     if     0 # 0 goto 12_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #   8:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  10:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $21630, %eax            #  13:     return 21630
    jmp     l_f1_exit              
    jmp     l_f1_7                  #  14:     goto   7
l_f1_9_if_false:
l_f1_7:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <bool> %ebp-24 ]

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
    movl    $80686, %eax            #   0:     div    t3 <- 80686, 32502
    movl    $32502, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t4 <- t3, 36935
    movl    $36935, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t4 < 9319 goto 1
    movl    $9319, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  11:     goto   9
l_f2_9:
    jmp     l_f2_7                  #  13:     goto   7
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_8                  #  15:     goto   8
l_f2_7:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f2_8:
    movzbl  -22(%ebp), %eax         #  19:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  20:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -23(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_14_while_body      #  22:     goto   14_while_body
    jmp     l_f2_12                 #  23:     goto   12
l_f2_14_while_body:
    jmp     l_f2_17                 #  25:     goto   17
l_f2_17:
    call    dummyBOOLfunc           #  27:     call   t8 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         
    jmp     l_f2_13_while_cond      #  28:     goto   13_while_cond
l_f2_12:

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     if     98 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $76181, %eax            #   8:     if     76181 > 38287 goto 9_if_true
    movl    $38287, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_exit            
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  13:     goto   14_while_cond
    jmp     l_test_8                #  14:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_0                #  17:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  20:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  21:     if     t0 < 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
l_test_17_if_true:
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  25:     goto   21_while_cond
    movl    $38682, %eax            #  26:     if     38682 < 41839 goto 24
    movl    $41839, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_24              
    jmp     l_test_25               #  27:     goto   25
l_test_24:
    movl    $1, %eax                #  29:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_26               #  30:     goto   26
l_test_25:
    movl    $0, %eax                #  32:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_26:
    movzbl  -14(%ebp), %eax         #  34:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_16               #  35:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_30_if_false      #  38:     goto   30_if_false
l_test_32_while_cond:
    movl    $0, %eax                #  40:     if     0 # 0 goto 33_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_33_while_body   
    jmp     l_test_31               #  41:     goto   31
l_test_33_while_body:
    jmp     l_test_32_while_cond    #  43:     goto   32_while_cond
l_test_31:
l_test_36_while_cond:
    jmp     l_test_35               #  46:     goto   35
    jmp     l_test_36_while_cond    #  47:     goto   36_while_cond
l_test_35:
    jmp     l_test_28               #  49:     goto   28
l_test_30_if_false:
l_test_28:
    movl    $97383, %eax            #  52:     sub    t2 <- 97383, 83594
    movl    $83594, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  53:     assign v1 <- t2
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
