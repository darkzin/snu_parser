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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 25 of <array 85 of <array 99 of <array 57 of <array 16 of <char>>>>>>> %ebp+12 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
    movl    $97, %eax               #   1:     if     97 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $97, %eax               #   5:     if     97 = 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  11:     goto   8
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
l_f0_12_while_cond:
    movl    $99, %eax               #  17:     if     99 < 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_13_while_body     
    jmp     l_f0_11                 #  18:     goto   11
l_f0_13_while_body:
    leal    _str_1, %eax            #  20:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               
    movl    $67864, %eax            #  23:     if     67864 > 94138 goto 17
    movl    $94138, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_17                
    jmp     l_f0_18                 #  24:     goto   18
l_f0_17:
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_19                 #  27:     goto   19
l_f0_18:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_19:
    movzbl  -17(%ebp), %eax         #  31:     assign v2 <- t3
    movb    %al, -19(%ebp)         
    jmp     l_f0_12_while_cond      #  32:     goto   12_while_cond
l_f0_11:
    call    dummyBOOLfunc           #  34:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t2
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #   2:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_3_while_cond:
    movl    $31879, %eax            #   4:     if     31879 = 37609 goto 4_while_body
    movl    $37609, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_while_body:
l_f1_7_while_cond:
    movl    $99173, %eax            #   8:     if     99173 > 70161 goto 8_while_body
    movl    $70161, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond
l_f1_6:
    movl    $1, %eax                #  13:     if     1 # 0 goto 11_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  16:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $30701, %eax            #  19:     assign v1 <- 30701
    movl    %eax, -28(%ebp)        
    jmp     l_f1_3_while_cond       #  20:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 90 of <array 40 of <array 63 of <array 53 of <array 97 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 100 of <array 48 of <array 22 of <array 71 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 94760
    movl    $94760, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t3
    jmp     l_f2_exit              
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t5 <- t4, 75762
    movl    $75762, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v3 <- t5
    movl    %eax, -36(%ebp)        
    movl    $49364, %eax            #   6:     if     49364 # 23647 goto 3_if_true
    movl    $23647, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   7:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    call    f1                      #  10:     call   t6 <- f1
    movb    %al, -29(%ebp)         
    movl    $1, %eax                #  11:     if     1 = t6 goto 8_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  12:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  14:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_2                  #  16:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_6                #   4:     goto   6
l_test_6:
l_test_10_while_cond:
    movl    $1, %eax                #   7:     if     1 # 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #   8:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $36304, %eax            #  16:     sub    t0 <- 36304, 81414
    movl    $81414, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #  17:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  18:     if     t0 > t1 goto 16_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_16_if_true      
    jmp     l_test_17_if_false      #  19:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  21:     goto   15
l_test_17_if_false:
l_test_15:
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  25:     goto   20_while_cond

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
