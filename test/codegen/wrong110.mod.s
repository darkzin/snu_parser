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
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 6 of <array 3 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    jmp     l_f0_3                  #   1:     goto   3
l_f0_3:
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
    movl    $97, %eax               #   4:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    movl    $10206, %eax            #   5:     assign v2 <- 10206
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #   6:     if     99 > 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #   7:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_5                  #  12:     goto   5
l_f0_5:
    movl    $63921, %eax            #  14:     if     63921 <= 27216 goto 15_if_true
    movl    $27216, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  15:     goto   16_if_false
l_f0_15_if_true:
    call    ReadInt                 #  17:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    leal    _str_1, %eax            #  18:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_14                 #  21:     goto   14
l_f0_16_if_false:
l_f0_14:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]

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
    movl    $100, %eax              #   0:     if     100 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   3:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $30088, %eax            #   4:     if     30088 >= 41851 goto 6_if_true
    movl    $41851, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_exit              
l_f1_11_while_cond:
    movl    $15107, %eax            #   9:     if     15107 < 42527 goto 12_while_body
    movl    $42527, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_12_while_body     
    jmp     l_f1_10                 #  10:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  12:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_5                  #  14:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $46891, %eax            #  20:     assign v0 <- 46891
    movl    %eax, -24(%ebp)        
    movl    $97, %eax               #  21:     if     97 > 99 goto 19
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_19                
    jmp     l_f1_20                 #  22:     goto   20
l_f1_19:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_21                 #  25:     goto   21
l_f1_20:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_21:
    movzbl  -17(%ebp), %eax         #  29:     assign v1 <- t4
    movb    %al, -25(%ebp)         
    jmp     l_f1_23                 #  30:     goto   23
l_f1_23:
l_f1_27_while_cond:
    movl    $655, %eax              #  33:     if     655 = 26021 goto 28_while_body
    movl    $26021, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_28_while_body     
    jmp     l_f1_26                 #  34:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  36:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_exit              
    jmp     l_f1_15                 #  39:     goto   15
l_f1_15:

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
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $100, %eax              #   0:     if     100 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   3:     return 98
    jmp     l_f2_exit              
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   5:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $74080, %eax            #   9:     assign v1 <- 74080
    movl    %eax, -20(%ebp)        
    movl    $20512, %eax            #  10:     assign v1 <- 20512
    movl    %eax, -20(%ebp)        
    jmp     l_f2_7                  #  11:     goto   7
l_f2_7:
    movl    $1949, %eax             #  13:     if     1949 >= 93061 goto 13_if_true
    movl    $93061, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  14:     goto   14_if_false
l_f2_13_if_true:
l_f2_17_while_cond:
    call    dummyCHARfunc           #  17:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  18:     if     98 < t3 goto 18_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_18_while_body     
    jmp     l_f2_16                 #  19:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  21:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_12                 #  23:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $74689, %eax            #   3:     if     74689 >= 45040 goto 8_while_body
    movl    $45040, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #   4:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
l_test_6:
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
l_test_14_while_cond:
    movl    $1, %eax                #  12:     if     1 # 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  13:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  15:     goto   14_while_cond
l_test_13:
l_test_18_while_cond:
    movl    $1, %eax                #  18:     if     1 = 1 goto 19_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  19:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  21:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyINTfunc            #  25:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_25_while_cond:
    movl    $97, %eax               #  27:     if     97 <= 100 goto 26_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_26_while_body   
    jmp     l_test_24               #  28:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  30:     goto   25_while_cond
l_test_24:
    jmp     l_test_10               #  32:     goto   10
l_test_10:
    call    dummyBOOLfunc           #  34:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  35:     if     t1 = 1 goto 29
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_29              
l_test_29:
    movl    $1, %eax                #  37:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_31               #  38:     goto   31
    movl    $0, %eax                #  39:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_31:
    movzbl  -18(%ebp), %eax         #  41:     assign v0 <- t2
    movb    %al, v0                

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
