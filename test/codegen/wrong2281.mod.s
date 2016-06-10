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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   8:     if     t2 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_while_body:
    movl    $35110, %eax            #  11:     if     35110 = 27536 goto 11_if_true
    movl    $27536, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  12:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_1_while_cond       #  17:     goto   1_while_cond
l_f0_0:
    movl    $74122, %eax            #  19:     if     74122 < 87231 goto 15_if_true
    movl    $87231, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  20:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  22:     goto   14
l_f0_16_if_false:
l_f0_14:
    call    WriteLn                 #  25:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]

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
    movl    $47316, %eax            #   1:     sub    t2 <- 47316, 90295
    movl    $90295, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t3 <- t2, 72516
    movl    $72516, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t4 <- t3, 95730
    movl    $95730, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $59038, %eax            #   4:     if     59038 = t4 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_6_if_false         #   7:     goto   6_if_false
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  13:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $96671, %eax            #  14:     assign v0 <- 96671
    movl    %eax, -32(%ebp)        

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 100 of <array 69 of <array 35 of <array 25 of <array 38 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f2_exit              
    call    f1                      #   1:     call   t2 <- f1
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v2 <- t2
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #   3:     if     99 <= 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   8:     if     99 >= t3 goto 8_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_8_while_body      
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  11:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_2                  #  13:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    movl    $97, %eax               #   0:     if     97 = 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    ReadInt                 #   3:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
l_test_9_while_cond:
    movl    $99, %eax               #   9:     if     99 = 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $1, %eax                #  19:     if     1 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
l_test_15_if_true:
l_test_19_while_cond:
    movl    $70046, %eax            #  23:     if     70046 < 17593 goto 20_while_body
    movl    $17593, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  24:     goto   18
l_test_20_while_body:
    movl    $97, %eax               #  26:     if     97 <= 100 goto 23
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_23              
    jmp     l_test_24               #  27:     goto   24
l_test_23:
    movl    $1, %eax                #  29:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_25               #  30:     goto   25
l_test_24:
    movl    $0, %eax                #  32:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_25:
    movzbl  -17(%ebp), %eax         #  34:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
l_test_29_while_cond:
    jmp     l_test_29_while_cond    #  37:     goto   29_while_cond
    jmp     l_test_19_while_cond    #  38:     goto   19_while_cond
l_test_18:
    jmp     l_test_14               #  40:     goto   14
l_test_16_if_false:
l_test_14:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
