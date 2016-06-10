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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 96 of <array 98 of <array 12 of <array 77 of <array 60 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 4 of <array 53 of <array 91 of <array 23 of <bool>>>>>>> %ebp+12 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 # 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1                  #   7:     goto   1
l_f0_1:
    movl    $15888, %eax            #   9:     sub    t2 <- 15888, 531
    movl    $531, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t3 <- t2, 90157
    movl    $90157, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     if     t3 >= 52393 goto 9_if_true
    movl    $52393, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
l_f0_9_if_true:
    movl    $1, %eax                #  14:     if     1 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  15:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  17:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_17_while_cond:
    jmp     l_f0_17_while_cond      #  21:     goto   17_while_cond
    movl    $98, %eax               #  22:     assign v2 <- 98
    movb    %al, -25(%ebp)         
    jmp     l_f0_8                  #  23:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $90635, %eax            #   2:     if     90635 <= 91393 goto 5
    movl    $91393, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  10:     return t1
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $100, %eax              #  12:     if     100 <= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
l_f1_14_while_cond:
l_f1_18_while_cond:
    movl    $10382, %eax            #  21:     if     10382 > 53845 goto 19_while_body
    movl    $53845, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_while_body     
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  24:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_14_while_cond      #  26:     goto   14_while_cond
l_f1_22_while_cond:
    movl    $100, %eax              #  28:     if     100 <= 99 goto 25_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  29:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  31:     goto   24
l_f1_26_if_false:
l_f1_24:
    movl    $100, %eax              #  34:     if     100 >= 98 goto 29_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_29_if_true        
    jmp     l_f1_30_if_false        #  35:     goto   30_if_false
l_f1_29_if_true:
    jmp     l_f1_28                 #  37:     goto   28
l_f1_30_if_false:
l_f1_28:
    movl    $99, %eax               #  40:     assign v1 <- 99
    movb    %al, -14(%ebp)         
l_f1_34_while_cond:
    movl    $98, %eax               #  42:     if     98 = 98 goto 35_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_35_while_body     
    jmp     l_f1_33                 #  43:     goto   33
l_f1_35_while_body:
    jmp     l_f1_34_while_cond      #  45:     goto   34_while_cond
l_f1_33:
    jmp     l_f1_22_while_cond      #  47:     goto   22_while_cond

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 67 of <array 4 of <array 53 of <array 91 of <array 23 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 96 of <array 98 of <array 12 of <array 77 of <array 60 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #   -521579576(%ebp)  521579544  [ $v0       <array 96 of <array 98 of <array 12 of <array 77 of <array 60 of <char>>>>>> %ebp-521579576 ]
    #   -551308572(%ebp)  29728996  [ $v1       <array 67 of <array 4 of <array 53 of <array 91 of <array 23 of <bool>>>>>> %ebp-551308572 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $551308560, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $137827140, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-521579576(%ebp)     # local array 'v0': 5 dimensions
    movl    $96,-521579572(%ebp)    #   dimension 1: 96 elements
    movl    $98,-521579568(%ebp)    #   dimension 2: 98 elements
    movl    $12,-521579564(%ebp)    #   dimension 3: 12 elements
    movl    $77,-521579560(%ebp)    #   dimension 4: 77 elements
    movl    $60,-521579556(%ebp)    #   dimension 5: 60 elements
    movl    $5,-551308572(%ebp)     # local array 'v1': 5 dimensions
    movl    $67,-551308568(%ebp)    #   dimension 1: 67 elements
    movl    $4,-551308564(%ebp)     #   dimension 2: 4 elements
    movl    $53,-551308560(%ebp)    #   dimension 3: 53 elements
    movl    $91,-551308556(%ebp)    #   dimension 4: 91 elements
    movl    $23,-551308552(%ebp)    #   dimension 5: 23 elements

    # function body
    leal    -551308572(%ebp), %eax  #   0:     &()    t1 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t1
    pushl   %eax                   
    leal    -521579576(%ebp), %eax  #   2:     &()    t2 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   4:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
    call    dummyINTfunc            #   7:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $7390, %eax             #   8:     return 7390
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   9:     goto   0
l_f2_0:
    movl    $41836, %eax            #  11:     return 41836
    jmp     l_f2_exit              
    jmp     l_f2_15_if_false        #  12:     goto   15_if_false
    jmp     l_f2_13                 #  13:     goto   13
l_f2_15_if_false:
l_f2_13:
    movl    $53021, %eax            #  16:     return 53021
    jmp     l_f2_exit              
    movl    $35430, %eax            #  17:     if     35430 >= 98955 goto 18_if_true
    movl    $98955, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  18:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  20:     goto   17
l_f2_19_if_false:
l_f2_17:
l_f2_22_while_cond:
    jmp     l_f2_21                 #  24:     goto   21
    jmp     l_f2_22_while_cond      #  25:     goto   22_while_cond
l_f2_21:
    movl    $9800, %eax             #  27:     return 9800
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  28:     goto   9
l_f2_9:
    call    dummyCHARfunc           #  30:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $551308560, %esp        # remove locals
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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    call    ReadInt                 #   7:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $97, %eax               #   9:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_13_if_false      #  10:     goto   13_if_false
l_test_15_while_cond:
    movl    $100, %eax              #  12:     if     100 # 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  13:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  15:     goto   15_while_cond
l_test_14:
    movl    $98, %eax               #  17:     assign v0 <- 98
    movb    %al, v0                
    movl    $0, %eax                #  18:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_11               #  19:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $21733, %eax            #  22:     assign v2 <- 21733
    movl    %eax, v2               

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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
