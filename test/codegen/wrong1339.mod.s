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
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 99 of <array 15 of <array 84 of <array 66 of <array 77 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    movl    $97, %eax               #   0:     if     97 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $31646, %eax            #   3:     assign v1 <- 31646
    movl    %eax, 12(%ebp)         
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $100, %eax              #   7:     if     100 > 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6                 
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  15:     return t5
    jmp     l_f0_exit              
    movl    $100, %eax              #  16:     if     100 < 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_11                
    jmp     l_f0_12                 #  17:     goto   12
l_f0_11:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_13                 #  20:     goto   13
l_f0_12:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_13:
    movzbl  -14(%ebp), %eax         #  24:     assign v2 <- t6
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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $47650, %eax            #   2:     if     47650 <= t6 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  10:     return t7
    jmp     l_f1_exit              
    movl    $90146, %eax            #  11:     assign v0 <- 90146
    movl    %eax, -28(%ebp)        

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
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]

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
    movl    $0, %eax                #   0:     if     0 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_9_while_cond:
    movl    $98, %eax               #   9:     if     98 <= 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_10_while_body     
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_while_body:
    movl    $0, %eax                #  12:     assign v0 <- 0
    movb    %al, -16(%ebp)         
    jmp     l_f2_9_while_cond       #  13:     goto   9_while_cond
l_f2_8:
    movl    $14864, %eax            #  15:     if     14864 = 26049 goto 14_if_true
    movl    $26049, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  16:     goto   15_if_false
l_f2_14_if_true:
l_f2_18_while_cond:
    movl    $97, %eax               #  19:     if     97 <= 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_19_while_body     
    jmp     l_f2_17                 #  20:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  22:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_23_if_false        #  24:     goto   23_if_false
    jmp     l_f2_21                 #  25:     goto   21
l_f2_23_if_false:
l_f2_21:
    movl    $37631, %eax            #  28:     if     37631 < 46652 goto 25
    movl    $46652, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_25                
    jmp     l_f2_26                 #  29:     goto   26
l_f2_25:
    movl    $1, %eax                #  31:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_27                 #  32:     goto   27
l_f2_26:
    movl    $0, %eax                #  34:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_27:
    movzbl  -13(%ebp), %eax         #  36:     assign v0 <- t5
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  37:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $91514, %eax            #  38:     if     91514 <= 66821 goto 31_if_true
    movl    $66821, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_31_if_true        
    jmp     l_f2_32_if_false        #  39:     goto   32_if_false
l_f2_31_if_true:
    jmp     l_f2_30                 #  41:     goto   30
l_f2_32_if_false:
l_f2_30:
    call    dummyCHARfunc           #  44:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_13                 #  45:     goto   13
l_f2_15_if_false:
l_f2_13:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $27311, %eax            #   2:     if     27311 <= 96394 goto 6_if_true
    movl    $96394, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   3:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $99, %eax               #  11:     if     99 < 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    call    dummyBOOLfunc           #  14:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #  15:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  16:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    f1                      #  17:     call   t4 <- f1
    movb    %al, -25(%ebp)         
    jmp     l_test_9                #  18:     goto   9
l_test_11_if_false:
l_test_9:
l_test_18_while_cond:
    jmp     l_test_17               #  22:     goto   17
    movl    $0, %eax                #  23:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $97, %eax               #  25:     if     97 <= 99 goto 23_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_23_if_true      
    jmp     l_test_24_if_false      #  26:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  28:     goto   22
l_test_24_if_false:
l_test_22:
l_test_27_while_cond:
    movl    $40303, %eax            #  32:     if     40303 > 50908 goto 28_while_body
    movl    $50908, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_28_while_body   
    jmp     l_test_26               #  33:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  35:     goto   27_while_cond
l_test_26:
    jmp     l_test_18_while_cond    #  37:     goto   18_while_cond
l_test_17:

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
