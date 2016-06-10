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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <char> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 69 of <array 48 of <array 46 of <array 76 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 > t1 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    call    dummyBOOLfunc           #   5:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $99, %eax               #  10:     return 99
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $v0       <char> %ebp-13 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, -13(%ebp)         
    movl    $16723, %eax            #   1:     return 16723
    jmp     l_f1_exit              
    jmp     l_f1_3_if_true          #   2:     goto   3_if_true
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 15 of <array 69 of <array 48 of <array 46 of <array 76 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <bool> %ebp-34 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 44 of <array 63 of <array 51 of <array 41 of <array 29 of <int>>>>>>> %ebp+20 ]
    #   -173681340(%ebp)  173681304  [ $v4       <array 15 of <array 69 of <array 48 of <array 46 of <array 76 of <char>>>>>> %ebp-173681340 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $173681328, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $43420332, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-173681340(%ebp)     # local array 'v4': 5 dimensions
    movl    $15,-173681336(%ebp)    #   dimension 1: 15 elements
    movl    $69,-173681332(%ebp)    #   dimension 2: 69 elements
    movl    $48,-173681328(%ebp)    #   dimension 3: 48 elements
    movl    $46,-173681324(%ebp)    #   dimension 4: 46 elements
    movl    $76,-173681320(%ebp)    #   dimension 5: 76 elements

    # function body
    leal    -173681340(%ebp), %eax  #   0:     &()    t1 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t1
    pushl   %eax                   
    movl    $26881, %eax            #   2:     sub    t2 <- 26881, 56702
    movl    $56702, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $41991, %eax            #   3:     if     41991 <= t2 goto 4
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_4                 
    jmp     l_f2_5                  #   4:     goto   5
l_f2_4:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_6                  #   7:     goto   6
l_f2_5:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_6:
    movzbl  -21(%ebp), %eax         #  11:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  12:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  13:     if     t4 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #  14:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #  16:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $92579, %eax            #  20:     mul    t5 <- 92579, 35399
    movl    $35399, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $70896, %eax            #  21:     sub    t6 <- 70896, t5
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $40861, %eax            #  22:     if     40861 < t6 goto 10
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_10                
    jmp     l_f2_11                 #  23:     goto   11
l_f2_10:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_12                 #  26:     goto   12
l_f2_11:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f2_12:
    movzbl  -33(%ebp), %eax         #  30:     assign v2 <- t7
    movb    %al, 16(%ebp)          
    movl    $100, %eax              #  31:     if     100 >= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  32:     goto   16_if_false
l_f2_15_if_true:
    call    dummyBOOLfunc           #  34:     call   t8 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    jmp     l_f2_14                 #  35:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $173681328, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $94154, %eax            #   1:     add    t0 <- 94154, 79461
    movl    $79461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $28878, %eax            #   2:     if     28878 > t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    movl    $92993, %eax            #   5:     if     92993 > 30715 goto 5_if_true
    movl    $30715, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   6:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   8:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
l_test_9_while_cond:
    jmp     l_test_exit            
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
    jmp     l_test_13_if_true       #  16:     goto   13_if_true
    jmp     l_test_13_if_true       #  17:     goto   13_if_true
    jmp     l_test_14_if_false      #  18:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_exit            
    movl    $97, %eax               #  21:     if     97 >= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_20_if_true      
    jmp     l_test_21_if_false      #  22:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  24:     goto   19
l_test_21_if_false:
l_test_19:
l_test_24_while_cond:
    movl    $99, %eax               #  28:     if     99 > 98 goto 25_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_25_while_body   
    jmp     l_test_23               #  29:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  31:     goto   24_while_cond
l_test_23:
    jmp     l_test_12               #  33:     goto   12
l_test_14_if_false:
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
