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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 5 of <array 3 of <array 8 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -18(%ebp)   1  [ $v4       <char> %ebp-18 ]

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
    movl    $65946, %eax            #   0:     sub    t3 <- 65946, 72086
    movl    $72086, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t3 < 10809 goto 1_if_true
    movl    $10809, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_4                  #   4:     goto   4
l_f0_4:
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_9_if_false         #   9:     goto   9_if_false
l_f0_11_while_cond:
l_f0_14_while_cond:
    movl    $99, %eax               #  12:     if     99 > 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_15_while_body     
    jmp     l_f0_13                 #  13:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  15:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_19_if_false        #  17:     goto   19_if_false
    jmp     l_f0_17                 #  18:     goto   17
l_f0_19_if_false:
l_f0_17:
    jmp     l_f0_11_while_cond      #  21:     goto   11_while_cond
    jmp     l_f0_7                  #  22:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    dummyCHARfunc           #  25:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  26:     assign v4 <- t4
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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 5 of <array 3 of <array 8 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 3 of <array 7 of <char>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v5       <bool> %ebp-22 ]
    #   -2448(%ebp)  2424  [ $v6       <array 1 of <array 5 of <array 3 of <array 8 of <array 5 of <int>>>>>> %ebp-2448 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2436, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $609, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2448(%ebp)          # local array 'v6': 5 dimensions
    movl    $1,-2444(%ebp)          #   dimension 1: 1 elements
    movl    $5,-2440(%ebp)          #   dimension 2: 5 elements
    movl    $3,-2436(%ebp)          #   dimension 3: 3 elements
    movl    $8,-2432(%ebp)          #   dimension 4: 8 elements
    movl    $5,-2428(%ebp)          #   dimension 5: 5 elements

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $79642, %eax            #   1:     if     79642 > 55799 goto 2
    movl    $55799, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v5 <- t3
    movb    %al, -22(%ebp)         
    movl    $50233, %eax            #  10:     param  2 <- 50233
    pushl   %eax                   
    movl    $81407, %eax            #  11:     if     81407 <= 5345 goto 7
    movl    $5345, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_8                  #  12:     goto   8
l_f1_7:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  15:     goto   9
l_f1_8:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  19:     param  1 <- t4
    pushl   %eax                   
    leal    -2448(%ebp), %eax       #  20:     &()    t5 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  22:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  23:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $2436, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 3 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 3 of <array 7 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <ptr(4) to <array 1 of <array 5 of <array 3 of <array 8 of <array 5 of <int>>>>>>> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #   -568(%ebp)  528  [ $v3       <array 2 of <array 3 of <array 4 of <array 3 of <array 7 of <char>>>>>> %ebp-568 ]
    #   -2992(%ebp)  2424  [ $v4       <array 1 of <array 5 of <array 3 of <array 8 of <array 5 of <int>>>>>> %ebp-2992 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2980, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $745, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-568(%ebp)           # local array 'v3': 5 dimensions
    movl    $2,-564(%ebp)           #   dimension 1: 2 elements
    movl    $3,-560(%ebp)           #   dimension 2: 3 elements
    movl    $4,-556(%ebp)           #   dimension 3: 4 elements
    movl    $3,-552(%ebp)           #   dimension 4: 3 elements
    movl    $7,-548(%ebp)           #   dimension 5: 7 elements
    movl    $5,-2992(%ebp)          # local array 'v4': 5 dimensions
    movl    $1,-2988(%ebp)          #   dimension 1: 1 elements
    movl    $5,-2984(%ebp)          #   dimension 2: 5 elements
    movl    $3,-2980(%ebp)          #   dimension 3: 3 elements
    movl    $8,-2976(%ebp)          #   dimension 4: 8 elements
    movl    $5,-2972(%ebp)          #   dimension 5: 5 elements

    # function body
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_3:
    movzbl  -15(%ebp), %eax         #   9:     assign v2 <- t3
    movb    %al, 12(%ebp)          
    leal    -568(%ebp), %eax        #  10:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  3 <- t4
    pushl   %eax                   
    movl    $95506, %eax            #  12:     add    t5 <- 95506, 16535
    movl    $16535, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t6 <- t5, 94714
    movl    $94714, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  2 <- t6
    pushl   %eax                   
    movl    $99, %eax               #  15:     param  1 <- 99
    pushl   %eax                   
    movl    $98, %eax               #  16:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #  17:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    leal    -568(%ebp), %eax        #  18:     &()    t8 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     param  3 <- t8
    pushl   %eax                   
    movl    $63221, %eax            #  20:     param  2 <- 63221
    pushl   %eax                   
    movl    $99885, %eax            #  21:     param  2 <- 99885
    pushl   %eax                   
    movl    $0, %eax                #  22:     param  1 <- 0
    pushl   %eax                   
    leal    -2992(%ebp), %eax       #  23:     &()    t9 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  25:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  26:     param  1 <- t10
    pushl   %eax                   
    movl    $97, %eax               #  27:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  28:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  29:     if     100 = t11 goto 11_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  30:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  32:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $2980, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 3 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    movl    $35644, %eax            #   0:     assign v0 <- 35644
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $52677, %eax            #   2:     if     52677 >= 2953 goto 3_if_true
    movl    $2953, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    movl    $0, %eax                #   5:     assign v1 <- 0
    movb    %al, v1                
l_test_8_while_cond:
    movl    $14320, %eax            #   7:     if     14320 < 84505 goto 9_while_body
    movl    $84505, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9_while_body    
    jmp     l_test_7                #   8:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  10:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
    movl    $100, %eax              #  13:     assign v2 <- 100
    movb    %al, v2                
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  15:     goto   14_while_cond
    jmp     l_test_2                #  16:     goto   2
l_test_4_if_false:
l_test_2:
    leal    v3, %eax                #  19:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  3 <- t0
    pushl   %eax                   
    movl    $14151, %eax            #  21:     sub    t1 <- 14151, 16157
    movl    $16157, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  2 <- t1
    pushl   %eax                   
    movl    $100, %eax              #  23:     param  1 <- 100
    pushl   %eax                   
    movl    $98, %eax               #  24:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #  25:     call   t2 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  26:     if     t2 < 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  27:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  29:     goto   16
l_test_18_if_false:
l_test_16:

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
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 2 of <array 3 of <array 4 of <array 3 of <array 7 of <char>>>>>>
    .long    5
    .long    2
    .long    3
    .long    4
    .long    3
    .long    7
    .skip  504








    # end of global data section
    #-----------------------------------------

    .end
##################################################
