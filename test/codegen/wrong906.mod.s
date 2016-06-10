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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
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
l_f0_1_while_cond:
    movl    $8842, %eax             #   1:     if     8842 # 82964 goto 2_while_body
    movl    $82964, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   4:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $97, %eax               #   7:     if     97 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
    movl    $49394, %eax            #  10:     if     49394 >= 69070 goto 10_if_true
    movl    $69070, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $75181, %eax            #  16:     assign v2 <- 75181
    movl    %eax, -20(%ebp)        
    jmp     l_f0_14                 #  17:     goto   14
l_f0_14:
    jmp     l_f0_5                  #  19:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_18                 #  22:     goto   18
    jmp     l_f0_18                 #  23:     goto   18
    jmp     l_f0_19                 #  24:     goto   19
l_f0_18:
    movl    $1, %eax                #  26:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_20                 #  27:     goto   20
l_f0_19:
    movl    $0, %eax                #  29:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_20:
    movzbl  -13(%ebp), %eax         #  31:     return t2
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $78574, %eax            #   5:     add    t2 <- 78574, 81474
    movl    $81474, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t3 <- t2, 3177
    movl    $3177, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     if     t3 >= 85530 goto 7_if_true
    movl    $85530, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
l_f1_7_if_true:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  11:     goto   6
l_f1_8_if_false:
l_f1_6:
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     return t4
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 1 of <array 4 of <array 10 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
l_f2_7_while_cond:
    movl    $24123, %eax            #   4:     if     24123 < 54052 goto 8_while_body
    movl    $54052, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #   5:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_12_if_false        #  12:     goto   12_if_false
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
l_f2_17_while_cond:
    movl    $99, %eax               #  15:     if     99 < 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_18_while_body     
    jmp     l_f2_16                 #  16:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  18:     goto   17_while_cond
l_f2_16:
    movl    $97, %eax               #  20:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_10                 #  21:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_22_while_cond:
    call    dummyCHARfunc           #  25:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  26:     if     100 <= t2 goto 23_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_23_while_body     
    jmp     l_f2_21                 #  27:     goto   21
l_f2_23_while_body:
    movl    $99, %eax               #  29:     if     99 < 97 goto 26_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_26_if_true        
    jmp     l_f2_27_if_false        #  30:     goto   27_if_false
l_f2_26_if_true:
    jmp     l_f2_25                 #  32:     goto   25
l_f2_27_if_false:
l_f2_25:
    jmp     l_f2_22_while_cond      #  35:     goto   22_while_cond
l_f2_21:

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
    jmp     l_test_exit            
    movl    $4650, %eax             #   1:     add    t0 <- 4650, 24376
    movl    $24376, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v0 <- t0
    movl    %eax, v0               
l_test_3_while_cond:
    movl    $36444, %eax            #   4:     if     36444 > 71148 goto 4_while_body
    movl    $71148, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    movl    $98, %eax               #   7:     if     98 > 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
l_test_7_if_true:
    movl    $90372, %eax            #  10:     if     90372 < 3789 goto 11_if_true
    movl    $3789, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  13:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_6                #  16:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_3_while_cond     #  19:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    call    ReadInt                 #  22:     call   t1 <- ReadInt
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
