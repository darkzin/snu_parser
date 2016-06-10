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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 23 of <array 85 of <array 47 of <array 29 of <array 20 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f0_5_while_cond:
    movl    $1, %eax                #   1:     if     1 # 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   2:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   6:     goto   0
l_f0_0:
    movl    $99, %eax               #   8:     assign v3 <- 99
    movb    %al, 20(%ebp)          
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  10:     if     98 = t3 goto 10
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  11:     goto   11
l_f0_10:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #  14:     goto   12
l_f0_11:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_12:
    movzbl  -14(%ebp), %eax         #  18:     return t4
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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 23 of <array 85 of <array 47 of <array 29 of <array 20 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -53293356(%ebp)  53293324  [ $v4       <array 23 of <array 85 of <array 47 of <array 29 of <array 20 of <bool>>>>>> %ebp-53293356 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $53293344, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13323336, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-53293356(%ebp)      # local array 'v4': 5 dimensions
    movl    $23,-53293352(%ebp)     #   dimension 1: 23 elements
    movl    $85,-53293348(%ebp)     #   dimension 2: 85 elements
    movl    $47,-53293344(%ebp)     #   dimension 3: 47 elements
    movl    $29,-53293340(%ebp)     #   dimension 4: 29 elements
    movl    $20,-53293336(%ebp)     #   dimension 5: 20 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 = t3 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     return t4
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_5                  #  11:     goto   5
    movl    $59388, %eax            #  12:     if     59388 < 14580 goto 10_if_true
    movl    $14580, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  13:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $99, %eax               #  18:     param  3 <- 99
    pushl   %eax                   
    leal    -53293356(%ebp), %eax   #  19:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  2 <- t5
    pushl   %eax                   
    movl    $97, %eax               #  21:     param  1 <- 97
    pushl   %eax                   
    movl    $28408, %eax            #  22:     if     28408 = 58311 goto 14
    movl    $58311, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_14                
    jmp     l_f1_15                 #  23:     goto   15
l_f1_14:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_16                 #  26:     goto   16
l_f1_15:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_16:
    movzbl  -21(%ebp), %eax         #  30:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  31:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
    movl    $0, %eax                #  32:     assign v2 <- 0
    movb    %al, 16(%ebp)          
    call    ReadInt                 #  33:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f1_6_while_cond       #  34:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_22                 #  36:     goto   22
    movl    $1, %eax                #  37:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_23                 #  38:     goto   23
l_f1_22:
    movl    $0, %eax                #  40:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_23:
    movzbl  -29(%ebp), %eax         #  42:     return t9
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $53293344, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 24 of <array 61 of <array 74 of <array 58 of <array 50 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 27 of <array 57 of <array 48 of <array 33 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 41 of <array 82 of <array 10 of <array 55 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $94925, %eax            #   0:     sub    t3 <- 94925, 73457
    movl    $73457, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 13618
    movl    $13618, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t5 <- t4, 54816
    movl    $54816, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $9762, %eax             #   3:     if     9762 >= t5 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #  11:     return t6
    jmp     l_f2_exit              
    call    dummyINTfunc            #  12:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $39862, %eax            #  13:     if     39862 >= 77713 goto 7_if_true
    movl    $77713, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  14:     goto   8_if_false
l_f2_7_if_true:
    movl    $100, %eax              #  16:     if     100 < 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11                
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $1, %eax                #  19:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $0, %eax                #  22:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f2_13:
    movzbl  -33(%ebp), %eax         #  24:     return t8
    jmp     l_f2_exit              
l_f2_16_while_cond:
    movl    $0, %eax                #  26:     if     0 = 0 goto 17_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_17_while_body     
    jmp     l_f2_15                 #  27:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  29:     goto   16_while_cond
l_f2_15:
l_f2_20_while_cond:
    movl    $100, %eax              #  32:     if     100 > 97 goto 21_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_21_while_body     
    jmp     l_f2_19                 #  33:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  35:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_6                  #  37:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 <= t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_6_while_cond:
    movl    $63684, %eax            #   9:     if     63684 >= 40706 goto 7_while_body
    movl    $40706, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_7_while_body     #  10:     goto   7_while_body
    jmp     l_test_7_while_body     #  11:     goto   7_while_body
    jmp     l_test_5                #  12:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  14:     goto   6_while_cond
l_test_5:
l_test_14_while_cond:
    jmp     l_test_13               #  17:     goto   13
l_test_17_while_cond:
    movl    $99, %eax               #  19:     if     99 > 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_18_while_body   
    jmp     l_test_16               #  20:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  22:     goto   17_while_cond
l_test_16:
    call    dummyProcedure          #  24:     call   dummyProcedure
l_test_22_while_cond:
    movl    $97307, %eax            #  26:     if     97307 <= 68280 goto 23_while_body
    movl    $68280, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  27:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  29:     goto   22_while_cond
l_test_21:
    jmp     l_test_25               #  31:     goto   25
l_test_25:
    jmp     l_test_14_while_cond    #  33:     goto   14_while_cond
l_test_13:
    call    ReadInt                 #  35:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
