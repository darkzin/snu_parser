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
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 < t3 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   5:     return 100
    jmp     l_f0_exit              
    movl    $325, %eax              #   6:     assign v3 <- 325
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #   7:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    movl    $82470, %eax            #   8:     assign v3 <- 82470
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_16_if_false        #  11:     goto   16_if_false
    jmp     l_f0_14                 #  12:     goto   14
l_f0_16_if_false:
l_f0_14:
    movl    $97, %eax               #  15:     return 97
    jmp     l_f0_exit              
    movl    $98, %eax               #  16:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  17:     goto   8
l_f0_8:
    jmp     l_f0_20                 #  19:     goto   20
    jmp     l_f0_20                 #  20:     goto   20
    jmp     l_f0_20                 #  21:     goto   20
    jmp     l_f0_21                 #  22:     goto   21
l_f0_20:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_22                 #  25:     goto   22
l_f0_21:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_22:
    movzbl  -14(%ebp), %eax         #  29:     assign v0 <- t4
    movb    %al, 8(%ebp)           

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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 11 of <array 12 of <array 27 of <array 90 of <array 47 of <char>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
    movl    $59641, %eax            #   5:     div    t4 <- 59641, 53054
    movl    $53054, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     assign v1 <- t4
    movl    %eax, -24(%ebp)        
l_f1_11_while_cond:
    movl    $13897, %eax            #   8:     if     13897 > 26690 goto 12_while_body
    movl    $26690, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_12_while_body     
    jmp     l_f1_10                 #   9:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  11:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_7                  #  13:     goto   7
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 11 of <array 12 of <array 27 of <array 90 of <array 47 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -26(%ebp)   1  [ $v2       <bool> %ebp-26 ]
    #   -15075772(%ebp)  15075744  [ $v3       <array 11 of <array 12 of <array 27 of <array 90 of <array 47 of <char>>>>>> %ebp-15075772 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $15075760, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3768940, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-15075772(%ebp)      # local array 'v3': 5 dimensions
    movl    $11,-15075768(%ebp)     #   dimension 1: 11 elements
    movl    $12,-15075764(%ebp)     #   dimension 2: 12 elements
    movl    $27,-15075760(%ebp)     #   dimension 3: 27 elements
    movl    $90,-15075756(%ebp)     #   dimension 4: 90 elements
    movl    $47,-15075752(%ebp)     #   dimension 5: 47 elements

    # function body
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyINTfunc            #   2:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $13826, %eax            #   3:     mul    t4 <- 13826, t3
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t4 > 45309 goto 3_while_body
    movl    $45309, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
l_f2_1:
    leal    -15075772(%ebp), %eax   #   9:     &()    t5 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  11:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  12:     assign v2 <- t6
    movb    %al, -26(%ebp)         

l_f2_exit:
    # epilogue
    addl    $15075760, %esp         # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $98, %eax               #   2:     if     98 = 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_8_if_false       #   5:     goto   8_if_false
    jmp     l_test_6                #   6:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
l_test_11_while_cond:
    movl    $1, %eax                #  11:     if     1 # 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #  12:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond
l_test_10:
    jmp     l_test_2                #  16:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $99, %eax               #  19:     assign v0 <- 99
    movb    %al, v0                
l_test_16_while_cond:
    jmp     l_test_15               #  21:     goto   15
l_test_19_while_cond:
    movl    $98, %eax               #  23:     if     98 # 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_20_while_body   
    jmp     l_test_18               #  24:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  26:     goto   19_while_cond
l_test_18:
    jmp     l_test_exit            
    jmp     l_test_16_while_cond    #  29:     goto   16_while_cond
l_test_15:
l_test_24_while_cond:
    movl    $97, %eax               #  32:     if     97 > 100 goto 27
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_27              
    jmp     l_test_28               #  33:     goto   28
l_test_27:
    movl    $1, %eax                #  35:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_29               #  36:     goto   29
l_test_28:
    movl    $0, %eax                #  38:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_29:
    movzbl  -13(%ebp), %eax         #  40:     param  2 <- t0
    pushl   %eax                   
    movl    $99, %eax               #  41:     param  1 <- 99
    pushl   %eax                   
    movl    $94812, %eax            #  42:     if     94812 < 43445 goto 31
    movl    $43445, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_31              
    jmp     l_test_32               #  43:     goto   32
l_test_31:
    movl    $1, %eax                #  45:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_33               #  46:     goto   33
l_test_32:
    movl    $0, %eax                #  48:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_33:
    movzbl  -14(%ebp), %eax         #  50:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  51:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  52:     if     100 = t2 goto 25_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_25_while_body   
    jmp     l_test_23               #  53:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  55:     goto   24_while_cond
l_test_23:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
