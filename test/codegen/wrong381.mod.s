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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 7 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $63264, %eax            #   4:     if     63264 <= 93465 goto 8_if_true
    movl    $93465, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   5:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $0, %eax                #  10:     assign v1 <- 0
    movb    %al, -13(%ebp)         
    jmp     l_f0_5_while_cond       #  11:     goto   5_while_cond
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  15:     assign v2 <- 97
    movb    %al, -14(%ebp)         
l_f0_14_while_cond:
    jmp     l_f0_15_while_body      #  17:     goto   15_while_body
    jmp     l_f0_15_while_body      #  18:     goto   15_while_body
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  20:     goto   14_while_cond

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 7 of <array 9 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 5 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]
    #   -22736(%ebp)  22704  [ $v4       <array 4 of <array 10 of <array 9 of <array 7 of <array 9 of <bool>>>>>> %ebp-22736 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $22724, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5681, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-22736(%ebp)         # local array 'v4': 5 dimensions
    movl    $4,-22732(%ebp)         #   dimension 1: 4 elements
    movl    $10,-22728(%ebp)        #   dimension 2: 10 elements
    movl    $9,-22724(%ebp)         #   dimension 3: 9 elements
    movl    $7,-22720(%ebp)         #   dimension 4: 7 elements
    movl    $9,-22716(%ebp)         #   dimension 5: 9 elements

    # function body
    movl    $98, %eax               #   0:     if     98 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $91828, %eax            #   4:     return 91828
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   5:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   6:     assign v3 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $6244, %eax             #  10:     sub    t6 <- 6244, 25554
    movl    $25554, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t6
    jmp     l_f1_exit              
    leal    -22736(%ebp), %eax      #  12:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  14:     call   t8 <- f0
    addl    $4, %esp               
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $22724, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $1, %eax                #   1:     return 1
    jmp     l_f2_exit              
l_f2_5_while_cond:
    jmp     l_f2_4                  #   3:     goto   4
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
l_f2_4:
l_f2_8_while_cond:
    jmp     l_f2_7                  #   7:     goto   7
    jmp     l_f2_8_while_cond       #   8:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $98, %eax               #  13:     if     98 # 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  14:     goto   12_if_false
l_f2_11_if_true:
    movl    $66352, %eax            #  16:     if     66352 # 283 goto 15_if_true
    movl    $283, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  17:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  19:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_10                 #  22:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_19_while_cond:
    jmp     l_f2_18                 #  26:     goto   18
    jmp     l_f2_18                 #  27:     goto   18
    jmp     l_f2_19_while_cond      #  28:     goto   19_while_cond
l_f2_18:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $1765, %eax             #   7:     sub    t0 <- 1765, 59063
    movl    $59063, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t1 <- t0, 82165
    movl    $82165, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $93980, %eax            #   9:     div    t2 <- 93980, 38234
    movl    $38234, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     if     t1 < t2 goto 6
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_6               
    jmp     l_test_7                #  11:     goto   7
l_test_6:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_8                #  14:     goto   8
l_test_7:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_8:
    movzbl  -25(%ebp), %eax         #  18:     assign v0 <- t3
    movb    %al, v0                
    movl    $97, %eax               #  19:     assign v1 <- 97
    movb    %al, v1                
    movl    $99, %eax               #  20:     if     99 = 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  21:     goto   13_if_false
l_test_12_if_true:
l_test_16_while_cond:
    movl    $9409, %eax             #  24:     if     9409 > 21389 goto 17_while_body
    movl    $21389, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_17_while_body   
    jmp     l_test_15               #  25:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  27:     goto   16_while_cond
l_test_15:
    call    WriteLn                 #  29:     call   WriteLn
    jmp     l_test_11               #  30:     goto   11
l_test_13_if_false:
l_test_11:

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
