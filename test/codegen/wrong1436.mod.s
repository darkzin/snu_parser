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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 39 of <array 40 of <array 93 of <array 17 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 69 of <array 93 of <array 34 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $92964, %eax            #   0:     assign v4 <- 92964
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #   1:     return 98
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 73 of <array 69 of <array 93 of <array 34 of <array 3 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 39 of <array 40 of <array 93 of <array 17 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #   -78923568(%ebp)  78923544  [ $v1       <array 8 of <array 39 of <array 40 of <array 93 of <array 17 of <int>>>>>> %ebp-78923568 ]
    #   -270047520(%ebp)  191123952  [ $v2       <array 73 of <array 69 of <array 93 of <array 34 of <array 3 of <int>>>>>> %ebp-270047520 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $270047508, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $67511877, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-78923568(%ebp)      # local array 'v1': 5 dimensions
    movl    $8,-78923564(%ebp)      #   dimension 1: 8 elements
    movl    $39,-78923560(%ebp)     #   dimension 2: 39 elements
    movl    $40,-78923556(%ebp)     #   dimension 3: 40 elements
    movl    $93,-78923552(%ebp)     #   dimension 4: 93 elements
    movl    $17,-78923548(%ebp)     #   dimension 5: 17 elements
    movl    $5,-270047520(%ebp)     # local array 'v2': 5 dimensions
    movl    $73,-270047516(%ebp)    #   dimension 1: 73 elements
    movl    $69,-270047512(%ebp)    #   dimension 2: 69 elements
    movl    $93,-270047508(%ebp)    #   dimension 3: 93 elements
    movl    $34,-270047504(%ebp)    #   dimension 4: 34 elements
    movl    $3,-270047500(%ebp)     #   dimension 5: 3 elements

    # function body
    movl    $99, %eax               #   0:     return 99
    jmp     l_f1_exit              
    movl    $97, %eax               #   1:     return 97
    jmp     l_f1_exit              
    movl    $98, %eax               #   2:     param  2 <- 98
    pushl   %eax                   
    leal    -270047520(%ebp), %eax  #   3:     &()    t4 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t4
    pushl   %eax                   
    leal    -78923568(%ebp), %eax   #   5:     &()    t5 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   7:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $270047508, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 73 of <array 69 of <array 93 of <array 34 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 39 of <array 40 of <array 93 of <array 17 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 92 of <array 40 of <array 31 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #    -26(%ebp)   1  [ $v2       <char> %ebp-26 ]
    #   -78923572(%ebp)  78923544  [ $v3       <array 8 of <array 39 of <array 40 of <array 93 of <array 17 of <int>>>>>> %ebp-78923572 ]
    #   -270047524(%ebp)  191123952  [ $v4       <array 73 of <array 69 of <array 93 of <array 34 of <array 3 of <int>>>>>> %ebp-270047524 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $270047512, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $67511878, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-78923572(%ebp)      # local array 'v3': 5 dimensions
    movl    $8,-78923568(%ebp)      #   dimension 1: 8 elements
    movl    $39,-78923564(%ebp)     #   dimension 2: 39 elements
    movl    $40,-78923560(%ebp)     #   dimension 3: 40 elements
    movl    $93,-78923556(%ebp)     #   dimension 4: 93 elements
    movl    $17,-78923552(%ebp)     #   dimension 5: 17 elements
    movl    $5,-270047524(%ebp)     # local array 'v4': 5 dimensions
    movl    $73,-270047520(%ebp)    #   dimension 1: 73 elements
    movl    $69,-270047516(%ebp)    #   dimension 2: 69 elements
    movl    $93,-270047512(%ebp)    #   dimension 3: 93 elements
    movl    $34,-270047508(%ebp)    #   dimension 4: 34 elements
    movl    $3,-270047504(%ebp)     #   dimension 5: 3 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    f1                      #   1:     call   t4 <- f1
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
    movl    $98, %eax               #  11:     assign v2 <- 98
    movb    %al, -26(%ebp)         
    jmp     l_f2_5_while_cond       #  12:     goto   5_while_cond
l_f2_4:
    movl    $98, %eax               #  14:     param  2 <- 98
    pushl   %eax                   
    leal    -270047524(%ebp), %eax  #  15:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  1 <- t5
    pushl   %eax                   
    leal    -78923572(%ebp), %eax   #  17:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  19:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $270047512, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 97 of <array 92 of <array 40 of <array 31 of <array 2 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $8687, %eax             #   6:     assign v0 <- 8687
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    leal    v1, %eax                #  10:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #  12:     call   t1 <- f2
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  13:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $100, %eax              #  15:     if     100 <= t3 goto 11_if_true
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #  16:     goto   12_if_false
l_test_11_if_true:
    movl    $100, %eax              #  18:     if     100 >= 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  21:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_21_if_false      #  25:     goto   21_if_false
    jmp     l_test_19               #  26:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_10               #  29:     goto   10
l_test_12_if_false:
l_test_10:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 97 of <array 92 of <array 40 of <array 31 of <array 2 of <bool>>>>>>
    .long    5
    .long   97
    .long   92
    .long   40
    .long   31
    .long    2
    .skip 22131520








    # end of global data section
    #-----------------------------------------

    .end
##################################################
