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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 64 of <array 67 of <array 31 of <array 73 of <array 56 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #  10:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_6_if_true          #  11:     goto   6_if_true
    jmp     l_f0_6_if_true          #  12:     goto   6_if_true
    jmp     l_f0_6_if_true          #  13:     goto   6_if_true
    jmp     l_f0_7_if_false         #  14:     goto   7_if_false
l_f0_6_if_true:
    movl    $98, %eax               #  16:     assign v0 <- 98
    movb    %al, 8(%ebp)           
l_f0_15_while_cond:
    movl    $100, %eax              #  18:     if     100 <= 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_16_while_body     
    jmp     l_f0_14                 #  19:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  21:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_5                  #  23:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    ReadInt                 #  26:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 21 of <array 14 of <array 95 of <array 54 of <array 44 of <int>>>>>>> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -13(%ebp)         
    movl    $70963, %eax            #   1:     if     70963 > 89012 goto 5_if_true
    movl    $89012, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $51432, %eax            #   7:     assign v2 <- 51432
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1                  #   8:     goto   1
l_f1_1:
    movl    $100, %eax              #  10:     assign v1 <- 100
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 73 of <array 50 of <array 9 of <array 11 of <array 60 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 53 of <array 32 of <array 95 of <array 56 of <array 24 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
l_f2_1_while_cond:
    movl    $25334, %eax            #   1:     sub    t3 <- 25334, 49013
    movl    $49013, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t3 < 68127 goto 2_while_body
    movl    $68127, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    call    dummyBOOLfunc           #   5:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    call    dummyBOOLfunc           #   9:     call   t5 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  10:     if     t5 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_5                  #  11:     goto   5
l_f2_11:
    jmp     l_f2_5                  #  13:     goto   5
    jmp     l_f2_5                  #  14:     goto   5
    jmp     l_f2_5                  #  15:     goto   5
    jmp     l_f2_6_while_cond       #  16:     goto   6_while_cond
l_f2_5:
    movl    $100, %eax              #  18:     if     100 >= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  19:     goto   14_if_false
l_f2_13_if_true:
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #  22:     goto   17_while_cond
    jmp     l_f2_19                 #  23:     goto   19
l_f2_19:
    call    dummyBOOLfunc           #  25:     call   t6 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movl    $2014, %eax             #  26:     add    t7 <- 2014, 76433
    movl    $76433, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     assign v3 <- t7
    movl    %eax, -28(%ebp)        
    jmp     l_f2_12                 #  28:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 21 of <array 14 of <array 95 of <array 54 of <array 44 of <int>>>>>>> %ebp-20 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   1:     goto   0
l_test_0:
l_test_5_while_cond:
l_test_8_while_cond:
    movl    $98, %eax               #   5:     if     98 # 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #   6:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #   8:     goto   8_while_cond
l_test_7:
l_test_12_while_cond:
    movl    $0, %eax                #  11:     if     0 = 0 goto 13_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  12:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  14:     goto   12_while_cond
l_test_11:
    jmp     l_test_5_while_cond     #  16:     goto   5_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    leal    v0, %eax                #  19:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  21:     call   t2 <- f1
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            

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
v0:                                 # <array 21 of <array 14 of <array 95 of <array 54 of <array 44 of <int>>>>>>
    .long    5
    .long   21
    .long   14
    .long   95
    .long   54
    .long   44
    .skip 265446720








    # end of global data section
    #-----------------------------------------

    .end
##################################################
