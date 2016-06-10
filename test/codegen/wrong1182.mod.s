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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 79 of <array 99 of <array 40 of <array 89 of <array 54 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 71 of <array 3 of <array 81 of <array 53 of <array 53 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     assign v3 <- 100
    movb    %al, 16(%ebp)          
    movl    $98, %eax               #   2:     assign v3 <- 98
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_7_while_cond:
    movl    $99, %eax               #   5:     if     99 < 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_8_while_body      
    jmp     l_f0_6                  #   6:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   8:     goto   7_while_cond
l_f0_6:
l_f0_11_while_cond:
    movl    $0, %eax                #  11:     if     0 # 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #  12:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  14:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_0                  #  16:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #  20:     call   t5 <- dummyINTfunc
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    movl    $83735, %eax            #   0:     if     83735 < 63508 goto 1_if_true
    movl    $63508, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $12667, %eax            #   4:     if     12667 # 33975 goto 6_while_body
    movl    $33975, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    call    dummyINTfunc            #   9:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $28383, %eax            #  10:     assign v1 <- 28383
    movl    %eax, -24(%ebp)        
l_f1_11_while_cond:
    movl    $99, %eax               #  12:     if     99 < 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    movl    $24401, %eax            #  17:     return 24401
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  18:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_16_while_cond:
    call    dummyCHARfunc           #  22:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_16_while_cond      #  23:     goto   16_while_cond
    call    dummyCHARfunc           #  24:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  25:     param  0 <- t5
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 31 of <array 97 of <array 36 of <array 99 of <array 98 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $75393, %eax            #   0:     if     75393 > 33916 goto 1_if_true
    movl    $33916, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   3:     return 100
    jmp     l_f2_exit              
    movl    $60384, %eax            #   4:     if     60384 = 46831 goto 6_if_true
    movl    $46831, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $94739, %eax            #  10:     if     94739 <= 63172 goto 10_if_true
    movl    $63172, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  13:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_0                  #  16:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $98, %eax               #  19:     if     98 # 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  20:     goto   15_if_false
l_f2_14_if_true:
    movl    $98, %eax               #  22:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_13                 #  23:     goto   13
l_f2_15_if_false:
l_f2_13:
    call    dummyCHARfunc           #  26:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  27:     return t3
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    movl    $98, %eax               #   0:     if     98 # 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $67797, %eax            #   9:     sub    t1 <- 67797, 69694
    movl    $69694, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_8_while_cond:
    jmp     l_test_11               #  14:     goto   11
l_test_11:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_13               #  17:     goto   13
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_13:
    movl    $1, %eax                #  20:     if     1 # t2 goto 9_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #  21:     goto   7
l_test_9_while_body:
    movl    $98, %eax               #  23:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_8_while_cond     #  24:     goto   8_while_cond
l_test_7:

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
