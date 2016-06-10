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
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -14(%ebp)         
l_f0_2_while_cond:
    movl    $99, %eax               #   2:     if     99 = 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $99, %eax               #   5:     if     99 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $99, %eax               #  11:     return 99
    jmp     l_f0_exit              
l_f0_11_while_cond:
    movl    $1, %eax                #  13:     if     1 = 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_2_while_cond       #  18:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_15                 #  20:     goto   15
l_f0_15:
    movl    $1, %eax                #  22:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_17                 #  23:     goto   17
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_17:
    movzbl  -13(%ebp), %eax         #  26:     assign v3 <- t3
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 39 of <array 100 of <array 82 of <array 11 of <char>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f1_exit              
    movl    $11148, %eax            #   2:     assign v3 <- 11148
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   3:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t3
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #   9:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $80600, %eax            #  10:     if     80600 <= 17249 goto 13_if_true
    movl    $17249, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  11:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  13:     goto   12
l_f2_14_if_false:
l_f2_12:
    movl    $98, %eax               #  16:     assign v3 <- 98
    movb    %al, -16(%ebp)         
    movl    $87432, %eax            #  17:     if     87432 < 34549 goto 18_if_true
    movl    $34549, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  18:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  20:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_9                  #  23:     goto   9
l_f2_9:

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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   4:     if     100 > 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #   5:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   7:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $86008, %eax            #  13:     assign v0 <- 86008
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_15               #  15:     goto   15
l_test_15:
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  18:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_11               #  19:     goto   11
l_test_11:
    jmp     l_test_exit            
l_test_22_while_cond:
    movl    $32197, %eax            #  23:     if     32197 < 58057 goto 23_while_body
    movl    $58057, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_23_while_body   
    jmp     l_test_21               #  24:     goto   21
l_test_23_while_body:
    movl    $98, %eax               #  26:     if     98 >= 100 goto 26_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_26_if_true      
    jmp     l_test_27_if_false      #  27:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  29:     goto   25
l_test_27_if_false:
l_test_25:
l_test_30_while_cond:
    movl    $100, %eax              #  33:     if     100 > 97 goto 31_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_31_while_body   
    jmp     l_test_29               #  34:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  36:     goto   30_while_cond
l_test_29:
    movl    $36019, %eax            #  38:     assign v0 <- 36019
    movl    %eax, v0               
    jmp     l_test_22_while_cond    #  39:     goto   22_while_cond
l_test_21:
    movl    $63079, %eax            #  41:     assign v0 <- 63079
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
