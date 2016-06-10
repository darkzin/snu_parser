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
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $v0       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $v1       <bool> %ebp-24 ]

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
    movzbl  -13(%ebp), %eax         #   1:     if     t1 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $94780, %eax            #   6:     if     94780 < 63860 goto 7
    movl    $63860, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7                 
    jmp     l_f0_8                  #   7:     goto   8
l_f0_7:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_9                  #  10:     goto   9
l_f0_8:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_9:
    movzbl  -15(%ebp), %eax         #  14:     assign v1 <- t3
    movb    %al, -24(%ebp)         
    call    dummyBOOLfunc           #  15:     call   t4 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  17:     goto   13_while_cond
    movl    $93689, %eax            #  18:     if     93689 < 14642 goto 16_if_true
    movl    $14642, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  19:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  21:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_0                  #  24:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_20_while_cond:
    call    dummyINTfunc            #  28:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     if     t5 >= 4893 goto 21_while_body
    movl    $4893, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_21_while_body     
    jmp     l_f0_19                 #  30:     goto   19
l_f0_21_while_body:
    movl    $0, %eax                #  32:     assign v1 <- 0
    movb    %al, -24(%ebp)         
l_f0_25_while_cond:
    movl    $28346, %eax            #  34:     if     28346 > 80823 goto 26_while_body
    movl    $80823, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_26_while_body     
    jmp     l_f0_24                 #  35:     goto   24
l_f0_26_while_body:
    jmp     l_f0_25_while_cond      #  37:     goto   25_while_cond
l_f0_24:
    movl    $97, %eax               #  39:     if     97 = 100 goto 29
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_29                
    jmp     l_f0_30                 #  40:     goto   30
l_f0_29:
    movl    $1, %eax                #  42:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_31                 #  43:     goto   31
l_f0_30:
    movl    $0, %eax                #  45:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f0_31:
    movzbl  -21(%ebp), %eax         #  47:     assign v1 <- t6
    movb    %al, -24(%ebp)         
    jmp     l_f0_20_while_cond      #  48:     goto   20_while_cond
l_f0_19:
    call    dummyCHARfunc           #  50:     call   t7 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  51:     return t7
    jmp     l_f0_exit              

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 51 of <array 21 of <array 81 of <array 95 of <array 60 of <bool>>>>>>> %ebp+20 ]

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
    movl    $68351, %eax            #   0:     add    t1 <- 68351, 55422
    movl    $55422, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    movl    $99, %eax               #   3:     if     99 < 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    call    ReadInt                 #   6:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $36103, %eax            #   7:     assign v0 <- 36103
    movl    %eax, 8(%ebp)          
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 33 of <array 7 of <array 91 of <array 58 of <array 22 of <char>>>>>>> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <bool> %ebp-13 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $1, %eax                #   1:     assign v1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_7                  #   6:     goto   7
    jmp     l_f2_7                  #   7:     goto   7
    jmp     l_f2_6_while_body       #   8:     goto   6_while_body
l_f2_7:
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #  11:     goto   5_while_cond
l_f2_15_while_cond:
    jmp     l_f2_14                 #  13:     goto   14
    jmp     l_f2_15_while_cond      #  14:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_11                 #  16:     goto   11
l_f2_11:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]

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
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $33849, %eax            #   3:     if     33849 < 18052 goto 5_if_true
    movl    $18052, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
    jmp     l_test_9                #  11:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_12               #  14:     goto   12
l_test_12:
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    leal    _str_1, %eax            #  19:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  21:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
