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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 74 of <array 3 of <array 99 of <array 94 of <bool>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 = t5 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    call    dummyProcedure          #   5:     call   dummyProcedure
    movl    $99, %eax               #   6:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $85118, %eax            #   7:     assign v2 <- 85118
    movl    %eax, -20(%ebp)        
    movl    $43183, %eax            #   8:     if     43183 >= 54599 goto 8_if_true
    movl    $54599, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   9:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  11:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
l_f0_12_while_cond:
    jmp     l_f0_13_while_body      #  17:     goto   13_while_body
    jmp     l_f0_11                 #  18:     goto   11
l_f0_13_while_body:
    movl    $97, %eax               #  20:     if     97 = 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  21:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  23:     goto   15
l_f0_17_if_false:
l_f0_15:
l_f0_20_while_cond:
    jmp     l_f0_19                 #  27:     goto   19
    jmp     l_f0_20_while_cond      #  28:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_12_while_cond      #  30:     goto   12_while_cond
l_f0_11:
    jmp     l_f0_24_if_false        #  32:     goto   24_if_false
    jmp     l_f0_27_if_false        #  33:     goto   27_if_false
    movl    $97, %eax               #  34:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    movl    $0, %eax                #  35:     if     0 # 1 goto 30
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_30                
    jmp     l_f0_31                 #  36:     goto   31
l_f0_30:
    movl    $1, %eax                #  38:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_32                 #  39:     goto   32
l_f0_31:
    movl    $0, %eax                #  41:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_32:
    movzbl  -14(%ebp), %eax         #  43:     assign v3 <- t6
    movb    %al, -21(%ebp)         
l_f0_35_while_cond:
    jmp     l_f0_35_while_cond      #  45:     goto   35_while_cond
    jmp     l_f0_25                 #  46:     goto   25
l_f0_27_if_false:
l_f0_25:
    jmp     l_f0_22                 #  49:     goto   22
l_f0_24_if_false:
l_f0_22:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 79 of <array 50 of <array 76 of <array 31 of <array 59 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $62976, %eax            #   2:     if     62976 < 82150 goto 4_if_true
    movl    $82150, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   3:     goto   5_if_false
l_f1_4_if_true:
    movl    $3207, %eax             #   5:     if     3207 >= 88493 goto 8
    movl    $88493, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8                 
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  13:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_3                  #  14:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
l_f1_13_while_cond:
    movl    $24599, %eax            #  20:     sub    t6 <- 24599, 72407
    movl    $72407, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     sub    t7 <- t6, 83327
    movl    $83327, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     if     t7 < 8897 goto 14_while_body
    movl    $8897, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  23:     goto   12
l_f1_14_while_body:
    movl    $1, %eax                #  25:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_13_while_cond      #  26:     goto   13_while_cond
l_f1_12:
    movl    $29140, %eax            #  28:     add    t8 <- 29140, 89867
    movl    $89867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $21624, %eax            #  29:     if     21624 <= t8 goto 18
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_18                
    jmp     l_f1_19                 #  30:     goto   19
l_f1_18:
    movl    $1, %eax                #  32:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_20                 #  33:     goto   20
l_f1_19:
    movl    $0, %eax                #  35:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_20:
    movzbl  -29(%ebp), %eax         #  37:     return t9
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $39441, %eax            #   4:     assign v0 <- 39441
    movl    %eax, -20(%ebp)        
    movl    $54630, %eax            #   5:     return 54630
    jmp     l_f2_exit              
    movl    $29824, %eax            #   6:     return 29824
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    call    WriteLn                 #   9:     call   WriteLn
    movl    $18414, %eax            #  10:     sub    t5 <- 18414, 88117
    movl    $88117, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     return t5
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   3:     if     100 < t1 goto 3_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   6:     goto   2
l_test_4_if_false:
l_test_2:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
l_test_8_while_cond:
    movl    $75080, %eax            #  12:     add    t3 <- 75080, 73091
    movl    $73091, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t4 <- t3, 96303
    movl    $96303, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $70242, %eax            #  14:     if     70242 > t4 goto 9_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_9_while_body    
    jmp     l_test_7                #  15:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  17:     goto   8_while_cond
l_test_7:
    movl    $72841, %eax            #  19:     assign v1 <- 72841
    movl    %eax, v1               

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
