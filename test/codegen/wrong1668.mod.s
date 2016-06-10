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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 18 of <array 56 of <array 40 of <array 5 of <array 3 of <char>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $v2       <bool> %ebp-34 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $67130, %eax            #   3:     div    t3 <- 67130, 35085
    movl    $35085, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t4 <- t3, 16618
    movl    $16618, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t5 <- t4, 62574
    movl    $62574, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     sub    t6 <- t5, 81034
    movl    $81034, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     if     t6 > 9039 goto 3_while_body
    movl    $9039, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
    movl    $56729, %eax            #  12:     if     56729 < 72319 goto 6_if_true
    movl    $72319, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  13:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond
    movl    $100, %eax              #  17:     assign v1 <- 100
    movb    %al, -33(%ebp)         
    movl    $98, %eax               #  18:     if     98 <= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  19:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  21:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $1, %eax                #  24:     assign v2 <- 1
    movb    %al, -34(%ebp)         
    movl    $97, %eax               #  25:     if     97 # 97 goto 19_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  26:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  28:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_5                  #  31:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <bool> %ebp-25 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    movl    $0, %eax                #   2:     assign v0 <- 0
    movb    %al, -25(%ebp)         
    jmp     l_f1_2_while_cond       #   3:     goto   2_while_cond
    movl    $78486, %eax            #   4:     mul    t3 <- 78486, 27839
    movl    $27839, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $31891, %eax            #   5:     add    t4 <- 31891, t3
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     return t4
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 18 of <array 56 of <array 40 of <array 5 of <array 3 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 69 of <array 19 of <array 9 of <array 82 of <array 96 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -604856(%ebp)  604824  [ $v3       <array 18 of <array 56 of <array 40 of <array 5 of <array 3 of <char>>>>>> %ebp-604856 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $604844, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $151211, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-604856(%ebp)        # local array 'v3': 5 dimensions
    movl    $18,-604852(%ebp)       #   dimension 1: 18 elements
    movl    $56,-604848(%ebp)       #   dimension 2: 56 elements
    movl    $40,-604844(%ebp)       #   dimension 3: 40 elements
    movl    $5,-604840(%ebp)        #   dimension 4: 5 elements
    movl    $3,-604836(%ebp)        #   dimension 5: 3 elements

    # function body
    leal    -604856(%ebp), %eax     #   0:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   2:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t3 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_3:
    movzbl  -18(%ebp), %eax         #  11:     return t4
    jmp     l_f2_exit              
    call    f1                      #  12:     call   t5 <- f1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t6 <- t5, 1381
    movl    $1381, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     if     t6 < 82725 goto 6
    movl    $82725, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6                 
    jmp     l_f2_7                  #  15:     goto   7
l_f2_6:
    movl    $1, %eax                #  17:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_8                  #  18:     goto   8
l_f2_7:
    movl    $0, %eax                #  20:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f2_8:
    movzbl  -29(%ebp), %eax         #  22:     assign v2 <- t7
    movb    %al, 16(%ebp)          
    call    dummyBOOLfunc           #  23:     call   t8 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         

l_f2_exit:
    # epilogue
    addl    $604844, %esp           # remove locals
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
l_test_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 99 goto 4
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_4               
    jmp     l_test_5                #   2:     goto   5
l_test_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   5:     goto   6
l_test_5:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $1, %eax                #   9:     if     1 # t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #  10:     goto   0
l_test_2_while_body:
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
    jmp     l_test_8                #  13:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_1_while_cond     #  16:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_13_while_cond:
    jmp     l_test_12               #  20:     goto   12
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_20_while_cond:
    jmp     l_test_19               #  23:     goto   19
    jmp     l_test_20_while_cond    #  24:     goto   20_while_cond
l_test_19:
    movl    $74603, %eax            #  26:     assign v0 <- 74603
    movl    %eax, v0               
    movl    $37767, %eax            #  27:     if     37767 <= 45051 goto 24_if_true
    movl    $45051, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24_if_true      
    jmp     l_test_25_if_false      #  28:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  30:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_15               #  33:     goto   15
l_test_15:
    jmp     l_test_13_while_cond    #  35:     goto   13_while_cond
l_test_12:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
