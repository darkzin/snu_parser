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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 97 of <array 95 of <array 87 of <array 38 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 27 of <array 79 of <array 3 of <array 35 of <array 87 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $41115, %eax            #   1:     if     41115 < 88357 goto 5
    movl    $88357, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5                 
    jmp     l_f0_6                  #   2:     goto   6
l_f0_5:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #   9:     return t5
    jmp     l_f0_exit              
    movl    $35319, %eax            #  10:     if     35319 = 63242 goto 10
    movl    $63242, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  11:     goto   11
l_f0_10:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_12                 #  14:     goto   12
l_f0_11:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_12:
    movzbl  -15(%ebp), %eax         #  18:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  19:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $49307, %eax            #  22:     add    t7 <- 49307, 67212
    movl    $67212, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $73856, %eax            #  23:     sub    t8 <- 73856, 72922
    movl    $72922, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     if     t7 = t8 goto 15
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_15                
    jmp     l_f0_16                 #  25:     goto   16
l_f0_15:
    movl    $1, %eax                #  27:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_17                 #  28:     goto   17
l_f0_16:
    movl    $0, %eax                #  30:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f0_17:
    movzbl  -25(%ebp), %eax         #  32:     return t9
    jmp     l_f0_exit              
l_f0_20_while_cond:
    jmp     l_f0_21_while_body      #  34:     goto   21_while_body
    jmp     l_f0_19                 #  35:     goto   19
l_f0_21_while_body:
    movl    $97, %eax               #  37:     if     97 < 99 goto 25
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_25                
    jmp     l_f0_26                 #  38:     goto   26
l_f0_25:
    movl    $1, %eax                #  40:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_27                 #  41:     goto   27
l_f0_26:
    movl    $0, %eax                #  43:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_27:
    movzbl  -13(%ebp), %eax         #  45:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_20_while_cond      #  46:     goto   20_while_cond
l_f0_19:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 27 of <array 79 of <array 3 of <array 35 of <array 87 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 63 of <array 97 of <array 95 of <array 87 of <array 38 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <bool> %ebp-23 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   912807460(%ebp)  -912807488  [ $v3       <array 63 of <array 97 of <array 95 of <array 87 of <array 38 of <int>>>>>> %ebp+912807460 ]
    #   834867616(%ebp)  77939844  [ $v4       <array 27 of <array 79 of <array 3 of <array 35 of <array 87 of <int>>>>>> %ebp+834867616 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-834867628, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-208716907, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,912807460(%ebp)      # local array 'v3': 5 dimensions
    movl    $63,912807464(%ebp)     #   dimension 1: 63 elements
    movl    $97,912807468(%ebp)     #   dimension 2: 97 elements
    movl    $95,912807472(%ebp)     #   dimension 3: 95 elements
    movl    $87,912807476(%ebp)     #   dimension 4: 87 elements
    movl    $38,912807480(%ebp)     #   dimension 5: 38 elements
    movl    $5,834867616(%ebp)      # local array 'v4': 5 dimensions
    movl    $27,834867620(%ebp)     #   dimension 1: 27 elements
    movl    $79,834867624(%ebp)     #   dimension 2: 79 elements
    movl    $3,834867628(%ebp)      #   dimension 3: 3 elements
    movl    $35,834867632(%ebp)     #   dimension 4: 35 elements
    movl    $87,834867636(%ebp)     #   dimension 5: 87 elements

    # function body
l_f1_1_while_cond:
    leal    834867616(%ebp), %eax   #   1:     &()    t5 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t5
    pushl   %eax                   
    leal    912807460(%ebp), %eax   #   3:     &()    t6 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  2 <- t6
    pushl   %eax                   
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     param  1 <- t7
    pushl   %eax                   
    movl    $54839, %eax            #   7:     param  0 <- 54839
    pushl   %eax                   
    call    f0                      #   8:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
    jmp     l_f1_5_if_true          #  10:     goto   5_if_true
    jmp     l_f1_5_if_true          #  11:     goto   5_if_true
    jmp     l_f1_6_if_false         #  12:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_4                  #  18:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  22:     goto   12
    movl    $100, %eax              #  23:     if     100 = 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_19                
    jmp     l_f1_20                 #  24:     goto   20
l_f1_19:
    movl    $1, %eax                #  26:     assign t9 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_21                 #  27:     goto   21
l_f1_20:
    movl    $0, %eax                #  29:     assign t9 <- 0
    movb    %al, -23(%ebp)         
l_f1_21:
    movzbl  -23(%ebp), %eax         #  31:     return t9
    jmp     l_f1_exit              
    movl    $0, %eax                #  32:     if     0 = 0 goto 24_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_24_if_true        
    jmp     l_f1_25_if_false        #  33:     goto   25_if_false
l_f1_24_if_true:
    jmp     l_f1_23                 #  35:     goto   23
l_f1_25_if_false:
l_f1_23:
    jmp     l_f1_13_while_cond      #  38:     goto   13_while_cond
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $-834867628, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 63 of <array 90 of <array 53 of <array 87 of <int>>>>>>> %ebp+20 ]

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
    movl    $30877, %eax            #   1:     if     30877 # 68474 goto 2_while_body
    movl    $68474, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    movl    $28990, %eax            #   4:     add    t5 <- 28990, 35670
    movl    $35670, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t6 <- t5, 80819
    movl    $80819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     return t6
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 < t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   8:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    movl    $35678, %eax            #  10:     sub    t2 <- 35678, 70597
    movl    $70597, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t3 <- t2, 56381
    movl    $56381, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     sub    t4 <- t3, 41098
    movl    $41098, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     if     t4 > 91656 goto 8_if_true
    movl    $91656, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_8_if_true       
    jmp     l_test_9_if_false       #  14:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  16:     goto   7
l_test_9_if_false:
l_test_7:
l_test_12_while_cond:
    movl    $97, %eax               #  20:     if     97 > 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  21:     goto   11
l_test_13_while_body:
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  24:     goto   12_while_cond
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
